import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/components/splash.dart';
import 'package:fyp_bidding_system/routes.dart';
import 'package:fyp_bidding_system/screens/profile/profile_screen.dart';
import 'package:fyp_bidding_system/screens/splash/splash_screen.dart';
import 'package:fyp_bidding_system/services/authentications.dart';
import 'package:fyp_bidding_system/theme.dart';
import 'package:fyp_bidding_system/wraper.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_)=>AuthService(),),
      ],
      child: GetMaterialApp(
        defaultTransition: Transition.native,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        // home: SplashScreen(),
        // We use routeName so that we dont need to remember the name
        initialRoute: splashscreen.routeName,
        routes: routes,
      ),
    );





  }
}

