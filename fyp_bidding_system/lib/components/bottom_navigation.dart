import 'package:fyp_bidding_system/constants.dart';
import 'package:fyp_bidding_system/screens/chat/chat_screen.dart';
import 'package:fyp_bidding_system/screens/home/home_screen.dart';
import 'package:fyp_bidding_system/screens/profile/profile_screen.dart';
import 'package:fyp_bidding_system/screens/purchased/purchased_screen.dart';
import 'package:fyp_bidding_system/screens/search/search_screen.dart';
import 'package:fyp_bidding_system/screens/winnings/winnings_screen.dart';
import 'package:fyp_bidding_system/seller_screens/add_product/add_product_screen.dart';
import 'package:fyp_bidding_system/seller_screens/seller_home/seller_home_screen.dart';
import 'package:fyp_bidding_system/seller_screens/seller_profile/seller_profile_screen.dart';
import 'package:fyp_bidding_system/seller_screens/seller_sold/seller_sold_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motion_toast/motion_toast.dart';
bool  isBuyer=true;
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);
  static String routeName="/bottom_navigation";

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var _allPagesBuyer=[HomeScreen(),ChatScreen(),SearchScreen(),WinningsScreen() ,ProfileScreen()];
  var _allPagesSeller=[SellerHomeScreen(),ChatScreen(),AddProductScreen(),WinningsScreen(),ProfileScreen()];
  //int _currentIndex=0;
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
            automaticallyImplyLeading: false,
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
                      MotionToast.success(
                          title:  Text("Success"),
                          description:  Text("Switched to seller"),
                          height: 50,
                          width:  300
                      ).show(context);

                      setState(() {
                       // _currentIndex1=0;
                        isBuyer=false;

                      });
                    }
                    else{
                      setState(() {
                        MotionToast.success(
                            title:  Text("Success"),
                            description:  Text("Switched to Buyer"),
                            height: 50,
                            width:  300
                        ).show(context);
                        isBuyer=true;
                        //_currentIndex1=0;
                      });
                    }

                },

              ),

            ],
          ),

          body: Center(

            child:
            isBuyer==true?
            _allPagesBuyer[_currentIndex1]: _allPagesSeller[_currentIndex1],
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
              TabItem(icon: FontAwesomeIcons.glassCheers, title: 'Winnings'),
              TabItem(icon: Icons.people, title: 'Profile'),
            ],
            badgeMargin: EdgeInsets.only(bottom: 10),disableDefaultTabController: true,
            backgroundColor: kPrimaryColor,
           // initialActiveIndex: 0,//optional, default as 0
            onTap: (index){
              setState(() {

                _currentIndex1=index;
              });
            },
          )
              :
          ConvexAppBar.badge(
            const {1:"23+"
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
            elevation: 7,

            initialActiveIndex: 0,

            //optional, default as 0
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
