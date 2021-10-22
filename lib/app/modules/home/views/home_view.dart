import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: controller.onTapEditor,
          child: Text('Go to editor'),
        ),
      ),
    );
  }
}
