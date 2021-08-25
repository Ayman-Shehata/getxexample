import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexample/pages/details/details.dart';
import 'package:getxexample/pages/home/view/home.dart';

void main() => runApp(
      GetMaterialApp(
        home: Home(),
        theme: ThemeData(primarySwatch: Colors.blue),
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
        title: Text("LogIN"),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.orange,
        child: Center(
          child: GestureDetector(
            child: Text("Center Text"),
            onTap: () {
              Get.to(HomeScreen());
            },
          ),
        ),
      ),
    );
  }
}
