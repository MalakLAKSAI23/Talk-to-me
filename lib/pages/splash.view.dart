import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talktome/pages/home_page.dart';

import '../widgets/constants.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds:6), () {
      Get.off(const HomePage());
    });
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.white,
      body: Center(

        child: Container(
          width:200,
          height: 200,
          margin:const EdgeInsets.all(40),
          child: 
            Image.asset("images/logo.png",
              height: 200,
              width: 300,),
        ),
      ),
    );
  }
}
