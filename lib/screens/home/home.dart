import 'package:flutter/material.dart';
import 'package:telkomsel_app/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home Page', style: mediumText15),
      ),
    );
  }
}
