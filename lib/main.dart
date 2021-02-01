import 'package:flutter/material.dart';
import 'pages/Auth/SignInPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Winku",
      home: SignInPage(),
    );
  }
}  