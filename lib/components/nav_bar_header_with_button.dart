import 'package:flutter/material.dart';

class HeaderWidgetWithButton extends StatelessWidget {
  final backPage;
  final pageTitle;

  const HeaderWidgetWithButton(this.backPage, this.pageTitle, {super.key});

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
            
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => backPage),
                  );
                },
                child: Image.asset(
                  'assets/images/back_button.png',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
             SizedBox(width: screenWidth * 0.15),
            Expanded(
              child: Text(
                pageTitle, // use pageTitle directly
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
