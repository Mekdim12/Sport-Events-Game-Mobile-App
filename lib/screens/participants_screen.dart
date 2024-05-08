import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/nav_bar_header_with_button.dart';
import '../screens/home_screen.dart';
import '../components/custom_table.dart';

class ParticipantsWidget extends StatefulWidget {
  const ParticipantsWidget({super.key});

  @override
  State<ParticipantsWidget> createState() => _ParticipantsWidgetState();
}

class _ParticipantsWidgetState extends State<ParticipantsWidget> {
  bool isNextButtonDisabled = false;
  bool isPreviousButtonDisabled = false;
  @override
  Widget build(BuildContext context) {
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
          const HeaderWidgetWithButton(HomePageWidget(), 'Participants'),
          Padding(
            padding: const EdgeInsets.only(
              top: 110,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: screenWidth,
                    decoration: const BoxDecoration(
                        //  give border with width 1.0
                        border: Border(
                          top: BorderSide(width: 2.0, color: Colors.black),
                          bottom: BorderSide(width: 2.0, color: Colors.black),
                          left: BorderSide(width: 2.0, color: Colors.black),
                          right: BorderSide(width: 2.0, color: Colors.black),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12))),
                    height: screenHeight * 0.8,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Column(
                      children: [
                        CustomTable({
                          'label': 'Group A',
                          'border_radius': BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        'padding':10.0
                        }, 61, true),
                        CustomTable({
                          'items':[],
                          'border_radius': BorderRadius.zero,
                          'padding':10.0
                        }, 61, false),
                        

                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.only(left: 20),
                            height: 56,
                            color: isPreviousButtonDisabled
                                ? Color.fromARGB(88, 0, 0, 0)
                                : Color.fromARGB(246, 0, 37, 76),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: isPreviousButtonDisabled
                                  ? Colors.transparent
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            height: 56,
                            color: isNextButtonDisabled
                                ? Color.fromARGB(88, 0, 0, 0)
                                : Color.fromARGB(246, 0, 37, 76),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: isNextButtonDisabled
                                  ? Colors.transparent
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
