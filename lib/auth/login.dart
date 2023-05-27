import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talktome/auth/signup.dart';
import 'package:talktome/widgets/constants.dart';
import '../widgets/input.dart';
import '../widgets/mybutton.global.dart';
import '../widgets/mysocial.login.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF021638)
          : Colors.white,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ydha".tr,
            ),
            InkWell(
              onTap: ()  => Get.off(const Register()),
              child:Text(
                "registre".tr,
                style: TextStyle(
                  color: myColor,
                ),
              ),
            ),
          ],
        ),
      ),
      body: isLoading == true
          ?  Center(
              child: CircularProgressIndicator(
                color:myColor,
              ),
            )
          : Center(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                    bottom: 20,
                  ),
                  alignment: Alignment.center,
                  child: Form(
                    key: _formKey,
                    child: Column(children: [
                      Image.asset(
                        "images/loginimg.png",
                        width: 200,
                        height: 200,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "loginacc".tr,
                            style:const TextStyle(
                                fontWeight: FontWeight.w600),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      //Input c'est un classe declarer dans le package widget
                      Input(
                        label: "Email",
                        hint: "email@gmail.com",
                        keyboardType: TextInputType.emailAddress,
                        isObscure: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'enteremail'.tr;
                          } else if (!RegExp(
                                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return 'entervalidemail'.tr;
                          }
                          return null;
                        },
                        prefixIcon: const Icon(Icons.email_outlined),
                        controller: emailController,
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      //Mot de passe
                      Input(
                        label: "pw".tr,
                        hint: "...........",
                        keyboardType: TextInputType.visiblePassword,
                        isObscure: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'plpass'.tr;
                          } else if (value.length < 8) {
                            return 'pssm'.tr;
                          }
                          return null;
                        },
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        controller: passwordController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //MyButton c'est un classe declarer dans le package widget
                      //btn pour connexion
                      MyButton(
                        text: "login".tr,
                        color:myColor,
                        onPressed: () {
                         
                        },
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      //MySocilaLogin c'est un classe declarer dans le package widget  contient trois btn (fb,twitter,google)
                      const MySocialLogin(),
                    ]),
                  ),
                ),
              ),
            ),
    );
  }
}


