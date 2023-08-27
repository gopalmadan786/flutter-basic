import 'package:flutter/material.dart';
import 'package:flutter_basic/screens/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      title: "Flutter Basic",
      debugShowCheckedModeBanner: false,
    );
  }
}
