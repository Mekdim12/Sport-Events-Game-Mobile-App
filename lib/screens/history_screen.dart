import 'package:flutter/material.dart';
import '../components/nav_bar_header_with_button.dart';
import '../screens/home_screen.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({super.key});

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
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
          const HeaderWidgetWithButton(
              HomePageWidget(), 'HISTORY OF THE EVENT'),
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    height: screenHeight * 0.85,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: const Center(
                      child: SingleChildScrollView(
                        child: Text(
                          textAlign: TextAlign.center,
                          'European Championship, in football , a quadrennial tournament held between the member countries of the Union of European Football Associations (UEFA). The European Championship is second in prestige to the World Cup among international football tournaments. Though the first European Championship was held in 1960, the idea behind it is much older. It dates back to 1927, when the French Football Federation’s administrator Henri Delaunay first proposed a pan-European football tournament. Despite the fact that he later became the first General Secretary of UEFA, Delaunay had already passed away by the time the tournament was officially started. In his honor, the tournament trophy was named after him. The first final of the European Championship (then known as the European Nations’ Cup) took place in 1960 after two years of preliminary contests between 17 national football clubs. In 1960 the Euro final tournament consisted of four teams, but it expanded to eight teams in 1980 and 16 teams in 1996. Currently, qualification for a European Championship begins two years before the scheduled final when all members of UEFA begin playing among themselves to earn a berth in the 16-team tournament (the qualification process does not include the host country or countries, which automatically qualify for the final).',
                          style: TextStyle(
                              color: Color.fromARGB(246, 0, 37, 76),
                              fontSize: 18,
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
