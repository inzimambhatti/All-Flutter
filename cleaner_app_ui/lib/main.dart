import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
      backgroundColor: Color.fromRGBO(47, 207, 255, 1),
      leading: const Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,),
      actions:const [
        Icon(Icons.refresh,color: Colors.black,),
        SizedBox(width: 16.0,
    ),
        Padding(padding: EdgeInsets.only(right: 28,
    ),
        child: Icon(Icons.menu,
    color: Colors.black,),
    )
      ],
    ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(47, 207, 255, 1
          ),
        ),
        //adding a child to it
        child: Stack(children: [
          Column(children: [
            Container(
              height: 352,
              color: Color.fromARGB(47, 207, 155, 1
              ),
              child: Column(children: [
               Stack(children: [
                 Padding(padding: const EdgeInsets.only(
                   top: 20,
                   left: 65,
                   right: 105,
                 ),
                   child: Container(height: 130, decoration: BoxDecoration(
                     color: Colors.black.withOpacity(0.1,
                     ),
                     borderRadius: const BorderRadius.only(
                       topLeft: Radius.circular(26,
                       ),
                       bottomRight:Radius.circular(26,
                       ),
                     ),
                   ),
                   ),
                 ),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 85),
                   child: Container(
                     height: 130,
                     width: MediaQuery.of(context).size.width,
                     decoration: const BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(26,
                           ),
                         ),
                     ),
                     child: Column(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         RichText(text: const TextSpan(children:[
                           TextSpan(text: "1.40",
                           style: TextStyle(
                             color: Colors.black,
                               fontWeight:FontWeight.w900,
                               fontSize: 52
                           ),),
                           TextSpan(text: "GB",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontWeight:FontWeight.w900,
                                   fontSize: 16
                               ),
                           ),
                         ] ),
                         ),
                         SizedBox(width: 4.0,),
                         Text("Cleanup the space"
                         ,style: TextStyle(
                             fontWeight: FontWeight.w600,
                             color: Colors.grey.withOpacity(0.8,)
                           ),),
                       
                     ],),
                   ),
                 ),
               ],),
      Padding(padding: EdgeInsets.only(
          left: 28,
          right: 28,
          top: 58),
               
               child: Stack(children: [
                 Container(
                   height: 25,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(18,)
                   ),
                 ),
                 Padding(padding: EdgeInsets.only(right: 58,),
                   child: Container(
                     height: 25,
                     decoration: BoxDecoration(
                         color: Color.fromRGBO(3, 162, 210, 1),
                         borderRadius: BorderRadius.circular(18,)
                     ),
                   ),
                 ),
                 Padding(padding: EdgeInsets.only(right: 210,),
                   child: Container(
                     height: 25,
                     decoration: BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.circular(18,)
                     ),
                   ),
                 ),

               ],
               ), 
               ),
                Padding(padding: EdgeInsets.only(left: 28,top: 30,
                ),
                  child: Row(children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
               child: Center(
                 child: Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(color: Colors.white,
                        shape: BoxShape.circle,
                       ),
                      ),
               ),
                    ) ,
                    const SizedBox(width: 6,),
                    const Text("Used 22 GB",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    ),
                    const SizedBox(width: 28,),
                  Center(
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(3, 162, 220, 1),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Container(
                          width: 6,
                          height: 6,
                          decoration: const BoxDecoration(color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),

                  ),
                    SizedBox(width: 10,),
                    const Text("Deleted 31 GB",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                   ],
                  ),
                ),
                SizedBox(height: 30,),
                Align( alignment: Alignment.topLeft,
                  child: Container(
                    height: 35,
                    width: MediaQuery.of(context).size.width/2.50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(28))
                    ),
                    child: Center(
                    child: Text("Can be deleted",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    ),
                    ),
                  ),

                ),

              ],)
            ),
            Expanded(child: Container(

              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(28),
                  )
              ),
              child:  Padding(padding: const EdgeInsets.only(left: 28 ,
                right:28,
                top: 30,
              ),
           child: SingleChildScrollView(
              child: Column(
            children: [
              //items1
              Row(
                children: [
                  Container(
                    width: 58,
                      height:58,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(
                        0.3,
                      ),
                      borderRadius: BorderRadius.circular(
                        14,
                      ),

                    ),
                    child: Icon(
                      Icons.cake_outlined,
                      color: Colors.black,
                    ),
                  ),
                  
                  Padding(padding: EdgeInsets.only(
                    left: 18,
                  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Junk Caches",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        ),
                        SizedBox(width: 4,),
                        Text("1.31 GB",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        ),

                      ],
                    ),
                  ),
                  Spacer(),
             Container(
               width: 20,
               height:20,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(
                   8,
                 ),
                 color: Color.fromRGBO(47, 207, 255, 1
                 ),


               ),
              child: Padding( padding: EdgeInsets.all(6
              ),
                child:  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
              ),
             ),
             ),
                ],
    ),

              //item2
            SizedBox(height: 8,),
              Row(
                children: [
                  Container(
                    width: 58,
                    height:58,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(
                        0.3,
                      ),
                      borderRadius: BorderRadius.circular(
                        14,
                      ),

                    ),
                    child: Icon(
                      Icons.grid_view,
                      color: Colors.black,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(
                    left: 18,
                  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("App Data",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        ),
                        SizedBox(width: 4,),
                        Text("Total 45.6MB",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        ),

                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 20,
                    height:20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: Colors.white,


                    ),
                    child: Padding( padding: const EdgeInsets.all(6
                    ),
                      child:  Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //item3
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    width: 58,
                    height:58,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(
                        0.3,
                      ),
                      borderRadius: BorderRadius.circular(
                        14,
                      ),

                    ),
                    child: Icon(
                      Icons.play_circle,
                      color: Colors.black,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(
                    left: 18,
                  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Audio & Videos",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        ),
                        SizedBox(width: 4,),
                        Text("1.31 GB",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        ),

                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 20,
                    height:20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: Colors.white,


                    ),
                    child: Padding( padding: EdgeInsets.all(6
                    ),
                      child:  Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //item4
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    width: 58,
                    height:58,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(
                        0.3,
                      ),
                      borderRadius: BorderRadius.circular(
                        14,
                      ),

                    ),
                    child: Icon(
                      Icons.view_module,
                      color: Colors.black,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(
                    left: 18,
                  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("App Uninstall",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        ),
                        SizedBox(width: 4,),
                        Text("Total 23.3 MB",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        ),

                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 20,
                    height:20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: Colors.white,


                    ),
                    child: Padding( padding: EdgeInsets.all(6
                    ),
                      child:  Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
                Container(
                  height: 50,
                  width:180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    color: Colors.greenAccent,


                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 17,),
                      Icon(Icons.delete_outline),
                      SizedBox(width: 10,),
                      Center(
                        child: Text("Clean 1.31 GB",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),),
                      ),
                    ],
                  ),
                ),
            ],
  ),
),
              ),
            )
            ),
          ],),
          Positioned(child: Container(

            height: 65,
            width: MediaQuery.of(context).size.width/3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                24,
              ),
              color: Color.fromRGBO(3, 168, 210, 1
              ),


            ),
            child:   Center(
              child: RichText(text: const TextSpan(children:[
                TextSpan(text: "1.40",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight:FontWeight.w600,
                      fontSize: 30
                  ),
                ),
                TextSpan(text: "GB",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight:FontWeight.w900,
                      fontSize: 16
                  ),
                ),
              ] ),
              ),
            ),
          ),
            right: 50,
            top: 320,

          ),
        ],
        ),
      ),
    );
  }
}
