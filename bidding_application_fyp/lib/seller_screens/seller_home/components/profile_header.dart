import 'package:flutter/material.dart';

import '../../../constants.dart';
class ProfileHeader extends StatefulWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  _ProfileHeaderState createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
          CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile.png"),
      ),
      Text(
      "Inzimam Bhatti",
      style: kLabelTextStyle,
      ),
        ]
      ),
    );
  }
}
