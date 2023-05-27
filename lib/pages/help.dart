import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import '../widgets/constants.dart';
import 'package:talktome/widgets/my_drawer.dart';


class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
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
                    color:myColor,
                    iconSize: 30,
                  )),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Icon(
                    Icons.help,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "help".tr,
                    style: const TextStyle( fontSize: 35),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "images/help.png",
                height: 160,
              ),
              const SizedBox(
                height: 30,
              ),
             Text(
                'helpContenu'.tr,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.email),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Email:",
                        style: TextStyle( fontSize: 20),
                      ),
                      Text("talktome@gmail.com",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Icon(Icons.phone),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "tel".tr,
                        style: const TextStyle( fontSize: 20),
                      ),
                      const Text("0606060606",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
