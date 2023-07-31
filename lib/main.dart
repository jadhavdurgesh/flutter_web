import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';

import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xmoney',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'HindSiliguri',
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor
      ),
      home: const Home(),
    );
  }
}
