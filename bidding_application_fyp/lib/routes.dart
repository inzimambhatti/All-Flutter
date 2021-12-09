import 'package:bidding_application_fyp/components/bottom_navigation.dart';
import 'package:bidding_application_fyp/screens/chat/chat_screen.dart';
import 'package:bidding_application_fyp/screens/details/details_screen.dart';
import 'package:bidding_application_fyp/screens/purchased/purchased_screen.dart';
import 'package:bidding_application_fyp/screens/search/search_screen.dart';
import 'package:bidding_application_fyp/seller_screens/become_seller/become_seller_screen.dart';
import 'package:bidding_application_fyp/seller_screens/seller_complete_profile/seller_complete_profile_screen.dart';
import 'package:bidding_application_fyp/seller_screens/seller_home/seller_home_screen.dart';
import 'package:bidding_application_fyp/seller_screens/seller_profile/seller_profile_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:bidding_application_fyp/screens/cart/cart_screen.dart';
import 'package:bidding_application_fyp/screens/complete_profile/complete_profile_screen.dart';
import 'package:bidding_application_fyp/screens/forgot_password/forgot_password_screen.dart';
import 'package:bidding_application_fyp/screens/home/home_screen.dart';
import 'package:bidding_application_fyp/screens/login_success/login_success_screen.dart';
import 'package:bidding_application_fyp/screens/otp/otp_screen.dart';
import 'package:bidding_application_fyp/screens/profile/profile_screen.dart';
import 'package:bidding_application_fyp/screens/sign_in/sign_in_screen.dart';
import 'package:bidding_application_fyp/screens/splash/splash_screen.dart';

import 'components/launcher.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {

  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  SellerCompleteProfileScreen.routeName: (context) => SellerCompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName:(context) =>DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  BecomeSellerScreen.routeName: (context) => BecomeSellerScreen(),
  SellerHomeScreen.routeName: (context) => SellerHomeScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
  PurchasedScreen.routeName: (context) => PurchasedScreen(),
  launcher.routeName: (context) => launcher(),
  BottomNavigation.routeName: (context) => BottomNavigation(),
  SellerProfileScreen.routeName: (context) => SellerProfileScreen(),

};
