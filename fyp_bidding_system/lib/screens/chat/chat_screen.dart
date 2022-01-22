
import 'package:fyp_bidding_system/components/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:fyp_bidding_system/services/authentications.dart';
import 'package:provider/provider.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);
  static String routeName = "/chat_screen";
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final authService=Provider.of<AuthService>(context);
    return Scaffold(
      body: SafeArea(
        child: Center(

          child: Column(
            children: [
              Text("i am chat screen"),
            ],
          ),
        ),
      ),
    );
  }
}
