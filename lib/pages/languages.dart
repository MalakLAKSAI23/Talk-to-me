// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talktome/locale/locale_controller.dart';
import 'package:talktome/widgets/my_drawer.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerlang = Get.find();
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF021638)
          : Colors.white,
      drawer: const MyDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                  color: const Color(0xFFCC1DB9),
                  iconSize: 30,
                )),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        controllerlang.changeLang("fr");
                        // Action à effectuer lors du clic sur l'image
                      },
                      child: Image.asset(
                        "images/france.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      onPressed: () {
                        
                       
                 },
                      minWidth: 100,
                      child: Text("fr".tr, textAlign: TextAlign.center),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        controllerlang.changeLang("en");
                        // Action à effectuer lors du clic sur l'image
                      },
                      child: Image.asset(
                        "images/etats-unis.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      onPressed: () {
                        controllerlang.changeLang("en");
                      },
                      minWidth: 100,
                      child: Text("en".tr),
                    )
                  ],
                ),
              ),
            ],
          ),
        ]
        ),
      ),
    );
  }
}
