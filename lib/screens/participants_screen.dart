import 'package:flutter/material.dart';
import '../components/nav_bar_header_with_button.dart';
import '../screens/home_screen.dart';

class ParticipantsWidget extends StatefulWidget {
  const ParticipantsWidget({super.key});

  @override
  State<ParticipantsWidget> createState() => _ParticipantsWidgetState();
}

class _ParticipantsWidgetState extends State<ParticipantsWidget> {
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
            padding: const EdgeInsets.only(top: 200),
          ),
        ],
      ),
    );
  }
}
