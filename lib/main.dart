import 'package:bmi/constants.dart';
import 'package:bmi/views/bmi_home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: kPrimaryColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const BmiHomeView(),
    );
  }
}
