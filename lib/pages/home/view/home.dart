import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ayman"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            //Goto page with delete all previous screen
            Get.offAllNamed('details');
          },
          child: Text("Press Here"),
        ),
      ),
    );
  }
}
