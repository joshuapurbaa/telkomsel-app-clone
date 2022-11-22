import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telkomsel_app/screens/bottom_nav_bar.dart';
import 'package:telkomsel_app/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Telkomsel App Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: redColor,
        ),
      ),
      home: const BottomNavBar(),
    );
  }
}
