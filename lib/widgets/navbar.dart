import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) {
        return mobileNavBar();
      },
      desktop: (p0) {
        return desktopNavBar();
      },
    );
  }

  Widget mobileNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

  Widget desktopNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: OutlinedButton(
              
              onPressed: (){},
              child: const Text('Request a Demo', style: TextStyle(color: Colors.redAccent),),
            ),
          )
        ],
      ),
    );
  }

  Widget navButton(String text){
    return Container(
      child: TextButton(onPressed: (){}, child: Text(text, style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),)),
    );
  }

  Widget navLogo(){
    return Container(
      width: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/X.png'), fit: BoxFit.contain),
      ),
    );
  }
}