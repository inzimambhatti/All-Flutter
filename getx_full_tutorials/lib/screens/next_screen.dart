import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              Text("This is next screen")
            ],
          ),
        ),
      ),
    );
  }
}
