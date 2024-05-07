import 'package:flutter/material.dart';

class HeaderWidgetLabelOnly extends StatelessWidget {
  final pageTitle;

  const HeaderWidgetLabelOnly(this.pageTitle);
      

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        width: screenWidth,
        height: 90,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/nav_bar_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              pageTitle,
              style:const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
