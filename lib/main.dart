import 'package:flutter/material.dart';
import 'package:nike_shoe_ui/HomePage.dart';
import 'package:nike_shoe_ui/Widgets/itemPage.dart';

import 'package:nike_shoe_ui/login_page.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFCEDDEE),
        ),
        routes: {
          "/": (context) => LoginPage(),
          "homePage": (context) => HomePage(),
          "itemPage": (context) => ItemPage(),
        });
  }
}
