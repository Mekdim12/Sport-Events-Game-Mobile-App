import 'dart:ffi';


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              child: Row(
                children: [Text("data")],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    height: 102,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: Text(
                        "History of the event",
                        style: TextStyle(
                            color: Color.fromARGB(98, 0, 37, 76),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    height: 102,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: Text(
                        "Amazing Facts",
                        style: TextStyle(
                            color: Color.fromARGB(98, 0, 37, 76),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    height: 102,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: Text(
                        "PARTICIPANTS",
                        style: TextStyle(
                            color: Color.fromARGB(98, 0, 37, 76),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    height: 102,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: Text(
                        "Calander",
                        style: TextStyle(
                            color: Color.fromARGB(98, 0, 37, 76),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                   Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    height: 102,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: Text(
                        "Quiz",
                        style: TextStyle(
                            color: Color.fromARGB(98, 0, 37, 76),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                   Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: isSoundOn? Color.fromARGB(246, 0, 37, 76):Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(12))),
                    height: 56,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: ElevatedButton(
                        
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                          isSoundOn?  Color.fromARGB(246, 0, 37, 76):Colors.white,
                          )
                        ),
                        onPressed: (){
                          isSoundOn = !isSoundOn;
                          setState(() {
                            isSoundOn;
                          });
                        },
                        child:  Text(
                        "SOUNDS OFF",
                        style: TextStyle(
                            color: isSoundOn? Colors.white : Color.fromARGB(246, 0, 37, 76),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),),
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
