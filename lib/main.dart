import 'package:flutter/material.dart';
import './theme/index.dart';
import './view/auth/login.dart';

void main() {
  runApp(const TransitMobile());
}

class TransitMobile extends StatelessWidget {
  const TransitMobile({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework For Life',
      theme: ThemeCustom.light,
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
