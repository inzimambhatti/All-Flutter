import 'package:bidding_application_fyp/screens/home/components/default_button_nav_bar.dart';
import 'package:bidding_application_fyp/screens/profile/components/body.dart';
import 'package:bidding_application_fyp/seller_screens/seller_home/components/seler_default_buttom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:bidding_application_fyp/constants.dart';
import 'package:bidding_application_fyp/screens/sign_in/sign_in_screen.dart';
import 'package:bidding_application_fyp/size_config.dart';

// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Bidding Cart, Let’s Win!",
      "image": "assets/images/splash_1.jpg"
    },
    {
      "text":
          "We help people Sale && Purchase antiuques items  \naround All across Pakistan",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop through Bidding. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(image: splashData[index]["image"], text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press: () {

                        if(isBuyer) {
                         setState(() {
                           Navigator.pushNamed(context, DefaultBottomNavBar.routeName);
                         });
                        } else {
                         setState(() {
                           Navigator.pushNamed(context, SellerDefaultBottomNavBar
                               .routeName);
                         });
                          //Navigator.pushNamed(context, SignInScreen.routeName);
                        }
                      },
                    ),
                    Spacer(),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
