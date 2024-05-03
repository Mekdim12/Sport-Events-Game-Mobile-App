import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}
class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    // GET THE SCREEN WIDTH AND HEIGHT
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/football_field.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
             Positioned(  // Wrap the Container with Positioned
            top: 0,  // Adjust as needed
            left: 0,  // Adjust as needed
            child: Container(
              width: screenWidth,  // Adjust as needed
              height: 90,  // Adjust as needed
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/nav_bar_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            children: [
                Text("sdfsdfsdfsdfsd")
              
            ],
          ),
        ],
      ),
    );
  }
}