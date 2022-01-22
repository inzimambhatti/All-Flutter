import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:fyp_bidding_system/components/no_account_text.dart';
import 'package:fyp_bidding_system/components/socal_card.dart';
import 'package:fyp_bidding_system/services/authentications.dart';
import '../../../size_config.dart';
import 'sign_form.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}


class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInButton(
                      Buttons.Google,
                      text: "Signin with Google",
                      onPressed: () async {




                      },
                    ),
                    SignInButton(
                      Buttons.Facebook,
                      text: "Signin with Facebook",
                      onPressed: () async {




                      },
                    ),
                    SignInButton(
                      Buttons.Twitter,
                      text: "Signin with Twitter",
                      onPressed: () async {




                      },
                    ),
                    TextButton(onPressed: ()async {
                      // dynamic result = await _auth.SignInAnon();
                      // if(result == null){
                      //   print('error signing in');
                      // } else {
                      //   print('signed in');
                      //   print(result.uid);
                    }


                        , child: Text("Anonymous"))
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

