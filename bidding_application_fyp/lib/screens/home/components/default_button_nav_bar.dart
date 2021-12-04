

import 'package:bidding_application_fyp/screens/chat/chat_screen.dart';
import 'package:bidding_application_fyp/screens/home/home_screen.dart';
import 'package:bidding_application_fyp/screens/profile/profile_screen.dart';
import 'package:bidding_application_fyp/screens/purchased/purchased_screen.dart';
import 'package:bidding_application_fyp/screens/search/search_screen.dart';
import 'package:flutter/material.dart';



class DefaultBottomNavBar extends StatefulWidget {
  const DefaultBottomNavBar({Key? key}) : super(key: key);
static String routeName="/default_button_nav_bar";
  

  @override
  _DefaultBottomNavBarState createState() => _DefaultBottomNavBarState();
}

class _DefaultBottomNavBarState extends State<DefaultBottomNavBar> {
  int _currentIndex=0;
  var _allPagesSeller=[HomeScreen(),ChatScreen(),SearchScreen(),PurchasedScreen() ,ProfileScreen()];
  bool isTest=false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child:_allPagesSeller[_currentIndex] ,
      ),

      bottomNavigationBar:
      BottomNavigationBar(

        unselectedItemColor:Colors.orange ,
        selectedItemColor: Colors.orange,
        iconSize: 25,
        unselectedFontSize: 10,
        selectedFontSize: 13,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,

        items:  const [

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              label: "Home",
              // backgroundColor: Colors.orange,
            ),
            //navBarr item2
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline),
              label: "CHAT",
              backgroundColor: Colors.orange,
            ),
            //navBarr item3
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "SEARCH",
              // backgroundColor: Colors.orangeAccent,
            ),
            //navBarr item4
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              label: "LOTS",
              // backgroundColor: Colors.orangeAccent,
            ),
            //navBarr item 5
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "ACCOUNT",
              // backgroundColor: Colors.orangeAccent,
            ),

        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
            // if(index==0) {
            //   Navigator.pushNamed(context, HomeScreen.routeName);
            // }
            // if(index==1) {
            //   Navigator.pushNamed(context, ChatScreen.routeName);
            // }
            // if(index==4) {
            //   Navigator.pushNamed(context, ProfileScreen.routeName);
            // }
          });
        },
      )
      ,
    );


      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),

  }
}
