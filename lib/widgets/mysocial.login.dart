import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'button.social.dart';


//my social login
class MySocialLogin extends StatelessWidget {
  const MySocialLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //text
      const Text(
        "- Or sign in with -",
        style: TextStyle(
             fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 20,
      ),
      //Row organiser le contenu de l'interface utilisateur horizentalement
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //facebook connection
          SocialBtn(
            assetImage: const AssetImage("images/fbicon.png"),
            onTap: () {
              if (kDebugMode) {
                print("login with Facebook");
              }
            },
          ),
          const SizedBox(
            width: 18,
          ),
          //google connection
          SocialBtn(
            assetImage: const AssetImage("images/googleicon.png"),
            onTap: () {
              if (kDebugMode) {
                print("login with google");
              }
            },
          ),
          const SizedBox(
            width: 18,
          ),
          //twitter connection
          SocialBtn(
            assetImage: const AssetImage("images/twittericon.png"),
            onTap: () {
              if (kDebugMode) {
                print("Login with twitter");
              }
            },
          ),
        ],
      )
    ]);
  }
}
