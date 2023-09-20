import 'package:bmi/views/Widgets/bmi_home_body.dart';
import 'package:flutter/material.dart';



class BmiHomeView extends StatelessWidget {
  const BmiHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: const BmiHomeBody(),
    );
  }
}


