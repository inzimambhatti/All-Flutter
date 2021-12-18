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
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
  int _currentIndex1=0;

  @override
  Widget build(BuildContext context) {

    return
      Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blueGrey, Colors.orange])),

        child: Scaffold(
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
                    child: Icon(Icons.transform,color: Colors.white,),
                  ),
                onTap: (){
                    if(isBuyer==true){

                      setState(() {
                        isBuyer=false;

                      });
                    }
                    else{
                      setState(() {
                        isBuyer=true;

                      });
                    }

                },

              ),

            ],
          ),

          body: Center(

            child:
            isBuyer==true?
            _allPagesBuyer[_currentIndex]: _allPagesSeller[_currentIndex1],
          ),

          bottomNavigationBar:
          isBuyer==true?
          ConvexAppBar.badge(
            {1:"23+"
            },
            items: const [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.message, title: 'Chat'),
              TabItem(icon: Icons.search, title: 'Search'),
              TabItem(icon: FontAwesomeIcons.hammer, title: 'Win'),
              TabItem(icon: Icons.people, title: 'Profile'),
            ],
            badgeMargin: EdgeInsets.only(bottom: 10),disableDefaultTabController: true,

            backgroundColor: kPrimaryColor,
            initialActiveIndex: 0,//optional, default as 0
            onTap: (index){
              setState(() {
                _currentIndex=index;
              });
            },
          )
              :
          ConvexAppBar.badge(
            {1:"23+"
            },
            items: const [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.message, title: 'Chat'),
              TabItem(icon: Icons.add_box, title: 'Add'),
              TabItem(icon: FontAwesomeIcons.hammer, title: 'Sold'),
              TabItem(icon: Icons.people, title: 'Profile'),
            ],
            badgeMargin: EdgeInsets.only(bottom: 10),
            backgroundColor: kPrimaryColor,
            initialActiveIndex: 0,//optional, default as 0
            onTap: (index){
              setState(() {
                _currentIndex1=index;
              });
            },
          ),





        ),
      );


  }
}
