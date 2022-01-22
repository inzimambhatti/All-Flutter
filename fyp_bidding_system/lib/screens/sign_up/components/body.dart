import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:fyp_bidding_system/components/socal_card.dart';
import 'package:fyp_bidding_system/constants.dart';
import 'package:fyp_bidding_system/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
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
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("Register Account", style: headingStyle),
                Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInButton(
                      Buttons.Google,
                      text: "Sign up with Google",
                      onPressed: () async {




                      },
                    ),
                    SignInButton(
                      Buttons.Facebook,
                      text: "Sign up with Facebook",
                      onPressed: () async {




                      },
                    ),
                    SignInButton(
                      Buttons.Twitter,
                      text: "Sign up with Twitter",
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

                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
