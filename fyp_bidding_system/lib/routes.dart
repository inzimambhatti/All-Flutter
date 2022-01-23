import 'package:fyp_bidding_system/components/bottom_navigation.dart';
import 'package:fyp_bidding_system/components/splash.dart';
import 'package:fyp_bidding_system/screens/chat/chat_screen.dart';
import 'package:fyp_bidding_system/screens/details/details_screen.dart';
import 'package:fyp_bidding_system/screens/my_account/my_account_screen.dart';
import 'package:fyp_bidding_system/screens/purchased/purchased_screen.dart';
import 'package:fyp_bidding_system/screens/search/search_screen.dart';
import 'package:fyp_bidding_system/screens/wallet/wallet_screen.dart';
import 'package:fyp_bidding_system/screens/winnings/winnings_screen.dart';
import 'package:fyp_bidding_system/seller_screens/add_product/add_product_screen.dart';
import 'package:fyp_bidding_system/seller_screens/become_seller/become_seller_screen.dart';
import 'package:fyp_bidding_system/seller_screens/seller_complete_profile/seller_complete_profile_screen.dart';
import 'package:fyp_bidding_system/seller_screens/seller_home/seller_home_screen.dart';
import 'package:fyp_bidding_system/seller_screens/seller_profile/seller_profile_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp_bidding_system/screens/cart/cart_screen.dart';
import 'package:fyp_bidding_system/screens/complete_profile/complete_profile_screen.dart';
import 'package:fyp_bidding_system/screens/forgot_password/forgot_password_screen.dart';
import 'package:fyp_bidding_system/screens/home/home_screen.dart';
import 'package:fyp_bidding_system/screens/login_success/login_success_screen.dart';
import 'package:fyp_bidding_system/screens/otp/otp_screen.dart';
import 'package:fyp_bidding_system/screens/profile/profile_screen.dart';
import 'package:fyp_bidding_system/screens/sign_in/sign_in_screen.dart';
import 'package:fyp_bidding_system/screens/splash/splash_screen.dart';
import 'package:fyp_bidding_system/wraper.dart';

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
  AddProductScreen.routeName: (context) => AddProductScreen(),
  Wraper.routeName: (context) => Wraper(),
  WinningsScreen.routeName: (context) => WinningsScreen(),
  MyAccountScreen.routeName: (context) => MyAccountScreen(),
  WalletScreen.routeName: (context) => WalletScreen(),
  splashscreen.routeName: (context) => splashscreen(),



};
