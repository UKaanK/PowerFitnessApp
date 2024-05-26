
import 'package:flutter/material.dart';
import 'package:signandregisterapp/pages/intro_page.dart';

void main() {
  runApp( MainPage());
}

class MainPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: IntroPage(),
    );
  }
}
