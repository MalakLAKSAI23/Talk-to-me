import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:talktome/widgets/my_drawer.dart';
import '../widgets/constants.dart';

class Infos extends StatelessWidget {
  const Infos({super.key});

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
                  color: myColor,
                  iconSize: 30,
                )),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.info,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'infos'.tr,
                  style: const TextStyle( fontSize: 35),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              "images/infos.png",
              height: 200,
              width: 500,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '"talktome"',
              textAlign: TextAlign.center,
              style: TextStyle(color: myColor, fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'infosContenu'.tr,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: AutofillHints.addressCity
              ),
            ),
          ],
        ),
      ),
    );
  }
}
