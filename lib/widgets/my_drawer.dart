import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talktome/pages/languages.dart';
import '../auth/Login.dart';
import '../auth/signup.dart';
import '../locale/locale_controller.dart';
import '../pages/help.dart';
import '../pages/home_page.dart';
import '../pages/infos.dart';
import 'constants.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  MyLocaleController controllerlang = Get.find();

  bool isEnglish = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF021638)
          : Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: myColor, width: 7.5)),
            ),
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 70,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/avatar.png'),
                    ),
                  ),
                ),
                const Text("MALAK LAKSAI", style: TextStyle(fontSize: 20))
              ],
            ),
          ),
          ListTile(
            title: Text("home".tr),
            leading: const Icon(Icons.home),
            onTap: () => Get.off(const HomePage()),
          ),
          ListTile(
            title: Text("infos".tr),
            leading: const Icon(Icons.info),
            onTap: () => Get.off(const Infos()),
          ),
          ListTile(
            title: Text("help".tr),
            leading: const Icon(Icons.help),
            onTap: () => Get.off(const Help()),
          ),
           ListTile(
            title: Text("languages".tr),
            leading: const Icon(Icons.translate),
            onTap: () => Get.off(const Language()),
          ),
          Column(
            children: [
              ListTile(
                title: Text("register".tr),
                leading: const Icon(Icons.person_add),
                onTap: () => Get.off(const Register()),
              ),
              ListTile(
                title: Text("login".tr),
                leading: const Icon(Icons.login),
                onTap: () => Get.off(const Login()),
              ),
            ],
          ),
          const Divider(),
          ListTile(
            title:const Text("change Theme"),
            leading: const Icon(Icons.mode_night),
            onTap: (){
              if(Get.isDarkMode){
                Get.changeTheme(ThemeData.light());
              }
              else{
                Get.changeTheme(ThemeData.dark());
              }
            },
          ),

        ],
      ),
    );
  }
}
