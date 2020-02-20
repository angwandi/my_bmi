import 'package:flutter/material.dart';
import 'package:my_bmi/result_page.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0e21),
        scaffoldBackgroundColor: Color(0xFF0A0e21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/calc': (context) => ResultPage(),
      },
    );
  }
}
