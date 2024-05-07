import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  bool isSoundOn = false;
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
          Positioned(
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "EUQUESTIONS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      isSoundOn = !isSoundOn;
                      setState(() {
                        isSoundOn;
                      });
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      height: 102,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: const Center(
                        child: Text(
                          "HISTORY OF THE EVENT",
                          style: TextStyle(
                              color: Color.fromARGB(246, 0, 37, 76),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  GestureDetector(
                    onTap: () {
                      isSoundOn = !isSoundOn;
                      setState(() {
                        isSoundOn;
                      });
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      height: 102,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: const Center(
                        child: Text(
                          "AMAZING FACTS",
                          style: TextStyle(
                              color: Color.fromARGB(246, 0, 37, 76),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  GestureDetector(
                    onTap: () {
                      isSoundOn = !isSoundOn;
                      setState(() {
                        isSoundOn;
                      });
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      height: 102,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: const Center(
                        child: Text(
                          "PARTICIPANTS",
                          style: TextStyle(
                              color: Color.fromARGB(246, 0, 37, 76),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  GestureDetector(
                    onTap: () {
                      isSoundOn = !isSoundOn;
                      setState(() {
                        isSoundOn;
                      });
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      height: 102,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: const Center(
                        child: Text(
                          "CALENDAR",
                          style: TextStyle(
                              color: Color.fromARGB(246, 0, 37, 76),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  GestureDetector(
                    onTap: () {
                      isSoundOn = !isSoundOn;
                      setState(() {
                        isSoundOn;
                      });
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      height: 102,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: const Center(
                        child: Text(
                          "QUIZ",
                          style: TextStyle(
                              color: Color.fromARGB(246, 0, 37, 76),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  GestureDetector(
                    onTap: () {
                      isSoundOn = !isSoundOn;
                      setState(() {
                        isSoundOn;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: isSoundOn
                              ? Color.fromARGB(246, 0, 37, 76)
                              : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      height: 56,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Center(
                        child: Text(
                          "SOUNDS OFF",
                          style: TextStyle(
                              color: isSoundOn
                                  ? Colors.white
                                  : Color.fromARGB(246, 0, 37, 76),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
