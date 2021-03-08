import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_with_getx/screens/HomeScreen.dart';
import 'package:state_with_getx/screens/ProfileScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/profile', page: () => ProfileScreen()),
      ],
    );
  }
}
