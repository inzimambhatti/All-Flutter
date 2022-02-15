import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_full_tutorials/screens/getview_widget.dart';
import 'package:getx_full_tutorials/screens/home_screen.dart';
import 'package:getx_full_tutorials/screens/internationlization_screen.dart';
import 'package:getx_full_tutorials/screens/next_screen.dart';
import 'package:getx_full_tutorials/screens/state_management_screen.dart';
import 'package:getx_full_tutorials/screens/storage_n_email.dart';

import 'messages.dart';


Future<void> main() async {
  await GetStorage.init(); // Initialize storage driver
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX tutorials',
      translations: Messages(), // your translations
      locale: Locale('en', 'US'), // default locale // to get device locale Get.deviceLocale
      fallbackLocale: Locale('en', 'US'), // fallback locale if wrong locale found
      defaultTransition: Transition.native,
      getPages: [
        GetPage(name:"/next_screen",page:()=>NextScreen()),
        GetPage(name:"/state_management_screen",page:()=>StatemanagementScreen()),
        GetPage(name:"/internationalization_screen",page:()=>InternationalizationScreen()),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Implementations in flutter"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: Column(
                  children: [
                    // 1)snack
                    ElevatedButton(
                      onPressed: (){
                       Get.snackbar(" Snack Title", "Messagebody of snack");
                      },
                      child: Text(
                        "Show SnackBar"
                      ),
                    ),
                    // 2)dialogue
                    ElevatedButton(
                      onPressed: (){
                       Get.defaultDialog(
                         title: "Dialogue Title",
                         middleText: "This is the middle text of dialogue",
                         textConfirm: "Ok",
                         textCancel: "Cancel",

                         onConfirm: (){
                               Get.snackbar("dialogue ok", "Pressed");

                         },
                         onCancel: (){

                         },


                       );
                      },
                      child: Text(
                        "Show Dialogue"
                      ),
                    ),
                    // 3)Bottom sheet
                    ElevatedButton(
                      onPressed: (){
                        Get.bottomSheet(
                          Container(
                            child: Wrap(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.wb_sunny_outlined,color: Colors.blue,

                                  ),
                                  title: Text("Dark Mode",style: TextStyle(
                                    color: Colors.blue,
                                  ),),
                                  onTap:(){
                                    Get.changeTheme(ThemeData.dark());
                                  },
                                ),
                                ListTile(
                                  leading: Icon(
                                    Icons.wb_sunny,color: Colors.blue,

                                  ),
                                  title: Text("Light Mood",style: TextStyle(
                                    color: Colors.blue,
                                  ),),
                                  onTap:(){
                                   Get.changeTheme(ThemeData.light());
                                  },
                                )
                              ],
                            ),
                          ),
         backgroundColor: Colors.white,
                          //barrierColor:Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: Colors.yellow,
                              width: 2,
                            )
                          )
                        );
                      },
                      child: Text(
                          "Show Bottom Sheet(Theme changer)"
                      ),
                    ),
                    // 4)Routing for un named routes
                    ElevatedButton(
                        onPressed: (){
                          Get.to(
                            HomeScreen(),
                            arguments:"Data from main screen" ,
                            //transition: Transition.fade,
                           // duration: Duration(seconds: 2),
                            fullscreenDialog: true

                          );
                        }, 
                        child:Text("Go to Home Screen (Unnamed routes)"),
                    ),
                    //5)Routing for named routes && statement management
                    ElevatedButton(
                      onPressed: (){
                        //Get.toNamed("state_management_screen",);
                        Get.to(
                            StatemanagementScreen(),
                            fullscreenDialog:true,
                               );

                      },
                      child:Text("State management (Named routes)"),
                    ),
                    //6)Internationalization
                    ElevatedButton(
                      onPressed: (){
                        Get.toNamed("internationalization_screen");

                      },
                      child:Text("Internationalization"),
                    ),
                    //7)Get storage and email validation
                    ElevatedButton(
                      onPressed: (){
                        Get.to(
                            StorageEmail()
                              );

                      },
                      child:Text("Get storage & Email validation"),
                    ),
                    //Get view vs widget
                    ElevatedButton(
                      onPressed: (){
                        Get.to(
                           GetViewVsWidget()
                              );

                      },
                      child:Text("GetView vs GetWidget Toturial"),
                    ),



                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

