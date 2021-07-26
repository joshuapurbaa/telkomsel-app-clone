import 'package:flutter/material.dart';
import 'package:telkomsel_app/screens/bottom_nav_bar.dart';
import 'package:telkomsel_app/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telkomsel App Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: redColor,
        ),
      ),
      home: BottomNavBar(),
    );
  }
}
