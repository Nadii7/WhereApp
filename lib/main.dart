import 'package:flutter/material.dart';
import 'package:whereapp_flutter/Screens/login/login.dart';
import 'package:whereapp_flutter/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: LoginScreen(),
    );
  }
}
