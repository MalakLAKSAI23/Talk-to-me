import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talktome/auth/signup.dart';

import '../widgets/constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwdController = TextEditingController();
  final _key = GlobalKey<FormState>();

  void login() {
    if (_key.currentState!.validate()) {
      // FirebaseAuth.instance.signInUserWIthEmailAndPassword();
    }
  }


  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? Color(0xFF021638)
          : Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "images/remlogo.png",
                  height: 100,
                  width: 180,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: _key,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Ce champ est obligatoire";
                            }
                            return null;
                          },
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "email",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      TextFormField(
                        controller: _passwdController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Ce champ est obligatoire";
                            }
                            return null;
                          },
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          hintText: "pw".tr,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: remember,
                                      activeColor:myColor,
                                      onChanged: (val) {
                                        setState(() {
                                          remember = val!;
                                        });
                                      },
                                    ),
                                    Text(
                                      "rm".tr,
                                    )
                                  ],
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "mdo".tr,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 400,
                        height: 50,
                        child: ElevatedButton(
                      onPressed: login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: myColor,
                      ),
                      child: Text(
                        "login".tr,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        ),
                      ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("or".tr),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    /*  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "images/facebook.png",
                                width: 100,
                                height: 100,
                              )),
                          const SizedBox(
                            width: 30,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "images/google.png",
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                     */
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("ydha".tr),
                            InkWell(
                              onTap: () => Get.off(const SignUp()),
                              child: Text(
                                "click".tr,
                                style:  TextStyle(
                                  color: myColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
