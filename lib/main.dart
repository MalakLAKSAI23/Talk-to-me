import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talktome/locale/locale_controller.dart';
import 'package:talktome/locale/translation.dart';
import 'package:get/get.dart';
import 'package:talktome/pages/splash.view.dart';
import 'package:talktome/theme/theme.dart';

// import 'package:shared_preferences/shared_preferences.dart';
SharedPreferences? sharepref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharepref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
      theme: Themes.customLightTheme,
      darkTheme: Themes.customDarkTheme,
      home: const SplashView(),

      translations: Translation(),
      locale: controller.initialLang,
      fallbackLocale: const Locale("en"),
      debugShowCheckedModeBanner: false,
    );
  }
}
