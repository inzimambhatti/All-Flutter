import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/components/bottom_navigation.dart';
import 'package:fyp_bidding_system/screens/sign_in/sign_in_screen.dart';
import 'package:fyp_bidding_system/services/authentications.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';
class Wraper extends StatelessWidget {
  const Wraper({Key? key}) : super(key: key);
  static String routeName="/wraper";

  @override
  Widget build(BuildContext context) {
    final authService=Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_,AsyncSnapshot<User?>snapshot){
          if(snapshot.connectionState==ConnectionState.active){
            final User?user=snapshot.data;
            return user==null?
            SignInScreen():BottomNavigation();
          }else{
            return Scaffold(body:Container(

              child: CircularProgressIndicator(),
            ) ,);
          }
    });
  }
}
