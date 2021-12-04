import 'package:bidding_application_fyp/screens/home/components/default_button_nav_bar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';
class HomeScreen extends StatefulWidget {
   const HomeScreen({Key? key}) : super(key: key);

  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),


    //bottomNavigationBar: DefaultBottomNavBar(),

      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
