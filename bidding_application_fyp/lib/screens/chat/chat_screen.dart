import 'package:bidding_application_fyp/screens/home/components/default_button_nav_bar.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);
  static String routeName = "/chat_screen";
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("i am chat screen"),
        ),
      ),
      //bottomNavigationBar: DefaultBottomNavBar(),
    );
  }
}
