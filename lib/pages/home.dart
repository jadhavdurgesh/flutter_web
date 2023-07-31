import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/navbar.dart';

import '../utils/contants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(child: Container(
      child: const Column(
        children: [
          NavBar()
        ],
      ),
    ));
  }
}