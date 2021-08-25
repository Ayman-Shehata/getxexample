import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexample/pages/details/details.dart';
import 'package:getxexample/pages/home/view/home.dart';

void main() => runApp(
      GetMaterialApp(
        home: Home(),
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        // Define Application page
        getPages: [
          GetPage(
            name: "/first",
            page: () => HomeScreen(),
          ),
          GetPage(
            name: "/details",
            page: () => DetailsScreen(),
          ),
          GetPage(
            name: "/myHome",
            page: () => Home(),
          ),
          GetPage(name: "/Settings", page: () => HomeScreen()),
        ],
      ),
    );

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Example"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // go to next screen
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              onPressed: () {
                Get.to(HomeScreen());
              },
              child: Text(
                "Screen#2",
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Get.snackbar("title", "message",
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.amberAccent,
                    backgroundColor: Colors.black,
                    borderWidth: 1,
                    borderRadius: 20,
                    mainButton:
                        TextButton(onPressed: () {}, child: Text("Tap")));
              },
              child: Text(
                "SnackBar",
              ),
            )
          ],
        ),
      ),
    );
  }
}
