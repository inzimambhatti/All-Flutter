import 'package:bidding_application_fyp/constants.dart';
import 'package:bidding_application_fyp/screens/chat/chat_screen.dart';
import 'package:bidding_application_fyp/screens/home/home_screen.dart';
import 'package:bidding_application_fyp/screens/profile/components/body.dart';
import 'package:bidding_application_fyp/screens/profile/profile_screen.dart';
import 'package:bidding_application_fyp/screens/purchased/purchased_screen.dart';
import 'package:bidding_application_fyp/screens/search/search_screen.dart';
import 'package:bidding_application_fyp/seller_screens/add_product/add_product_screen.dart';
import 'package:bidding_application_fyp/seller_screens/seller_home/seller_home_screen.dart';
import 'package:bidding_application_fyp/seller_screens/seller_profile/seller_profile_screen.dart';
import 'package:bidding_application_fyp/seller_screens/seller_sold/seller_sold_screen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
bool  isBuyer=true;
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);
  static String routeName="/bottom_navigation";

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var _allPagesBuyer=[HomeScreen(),ChatScreen(),SearchScreen(),PurchasedScreen() ,ProfileScreen()];
  var _allPagesSeller=[SellerHomeScreen(),ChatScreen(),AddProductScreen(),SellerSoldScreen(),SellerProfileScreen()];
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {

    return

      Scaffold(
        backgroundColor: Colors.white,


        appBar: AppBar(
          title:
          isBuyer==true?
          const Text("Buyer Mode"):const Text("Seller Mode"),
          backgroundColor:kPrimaryColor,
          actions: [
            GestureDetector(
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Icon(Icons.transform),
                ),
              onTap: (){
                  if(isBuyer==true){

                    setState(() {
                      isBuyer=false;
                      print(isBuyer);
                    });
                  }
                  else{
                    setState(() {
                      isBuyer=true;
                      print(isBuyer);
                    });
                  }

print("false after set stare$isBuyer");
              },

            ),

          ],
        ),

        body: Center(

          child:
          isBuyer==true?
          _allPagesBuyer[_currentIndex]: _allPagesSeller[_currentIndex],
        ),

        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor:Colors.white ,
          selectedItemColor: Colors.white,
          iconSize: 25,
          unselectedFontSize: 10,
          selectedFontSize: 15,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.orange,
          items:  [
            if(isBuyer==true)...{

               BottomNavigationBarItem(
                tooltip: "/home",
                icon:Icon(FontAwesomeIcons.home),
                title: Text("HOME"),



                // backgroundColor: Colors.orange,
              ),
              //navBarr item2
              const BottomNavigationBarItem(
                icon:Icon(FontAwesomeIcons.envelope),
                title: Text("CHAT"),
                backgroundColor: Colors.orange,
              ),
              //navBarr item3
              const BottomNavigationBarItem(
                icon:Icon(FontAwesomeIcons.search),
                title: Text("SEARCH"),
                // backgroundColor: Colors.orangeAccent,
              ),
              //navBarr item4
              const BottomNavigationBarItem(
                icon:Icon(FontAwesomeIcons.shopify),
                title: Text("LOTS"),
                // backgroundColor: Colors.orangeAccent,
              ),
              //navBarr item 5
              const BottomNavigationBarItem(
                icon:Icon(Icons.person_pin),
                title: Text("ACCOUNT"),
                // backgroundColor: Colors.orangeAccent,
              ),


            }

            else...{

              const BottomNavigationBarItem(
                icon:Icon(Icons.home),
                title: Text("HOME"),

                // backgroundColor: Colors.orange,
              ),
              //navBarr item2
              const BottomNavigationBarItem(
                icon:Icon(Icons.mail_outline),
                title: Text("CHAT"),
                backgroundColor: Colors.orange,
              ),
              const BottomNavigationBarItem(
                icon:Icon(Icons.add_box,color: Colors.green,),
                title: Text("ADD"),
                backgroundColor: Colors.orange,
              ),

              //navBarr item3
              const BottomNavigationBarItem(
                icon:Icon(Icons.shopping_basket),
                title: Text("WON"),

                // backgroundColor: Colors.orange,
              ),
              //navBarr item4
              const BottomNavigationBarItem(
                icon:Icon(Icons.person),
                title: Text("ACCOUNT"),

                // backgroundColor: Colors.orange,
              ),
            }

          ],
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
          },
        ),

      );

  }
}
