import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/test_controller.dart';

class TestView extends GetView<TestController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TestView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
