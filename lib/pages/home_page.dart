import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart ' as stt;
import 'package:flutter_share/flutter_share.dart';
import 'package:talktome/pages/flutter_plu.dart';
import 'package:talktome/widgets/my_drawer.dart';
import '../widgets/constants.dart';
import '../widgets/my_icon_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() {
    return HomePageState();

  }
}

class HomePageState extends State<HomePage> {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _textSpeech = 'speech'.tr;

  void onListen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
          // ignore: avoid_print
          onStatus: (val) => print('onStatus: $val'),
          // ignore: avoid_print
          onError: (val) => print('onError: $val'));
      if (available) {
        setState(() {
          _isListening = true;
        });
        _speech.listen(
            onResult: (val) => setState(() {
                  _textSpeech = val.recognizedWords;
                }));
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF021638)
            : Colors.white,
        drawer: const MyDrawer(),
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                  icon: (Icon(
                    Icons.share_outlined,
                    color: myColor,
                    size: 30,
                  )),
                  onPressed: () {
                    // ignore: unnecessary_string_interpolations
                    FlutterShare.share(title: "TalkToMe", text: "$_textSpeech");
                  }),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
              color: myColor,
              iconSize: 30,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.height * 0.05,
                ),
                child: Text(
                  _textSpeech,
                  style: const TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: MyIconButton(
                      isPrimary: false,
                      shadowColor: _isListening
                          ? Colors.redAccent.shade100
                          : Colors.transparent,
                      color: Colors.redAccent,
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        setState(() {
                          _textSpeech = 'speech'.tr;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyIconButton(
                      isPrimary: true,
                      shadowColor: _isListening
                          ? const Color(0xFFCC1DB9)
                          : Colors.transparent,
                      onPressed: () => onListen(),
                      color: myColor,
                      icon: Icon(
                        _isListening ? Icons.mic : Icons.mic_off,
                        size: 40,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyIconButton(
                      isPrimary: false,
                      onPressed: () {
                        Get.off(const FlutterBlueApp());
                      },
                      color: Colors.greenAccent,
                      icon: const Icon(Icons.check),
                      shadowColor: _isListening
                          ? Colors.greenAccent.shade100
                          : Colors.transparent,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
