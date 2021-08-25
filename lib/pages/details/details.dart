import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("details"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            GestureDetector(
              child: Text("goto home"),
              onTap: () {
                Get.toNamed("myHome");
              },
            ),
            GestureDetector(
              child: Text("snackBar"),
              onTap: () {
                Get.snackbar("title", "message",
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.amberAccent,
                    backgroundColor: Colors.black,
                    borderWidth: 1,
                    borderRadius: 20,
                    mainButton:
                        TextButton(onPressed: () {}, child: Text("ayman")));
              },
            )
          ],
        ),
      ),
    );
  }
}
