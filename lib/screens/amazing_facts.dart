import 'package:flutter/material.dart';
import '../components/nav_bar_header_with_button.dart';
import '../screens/home_screen.dart';
import '../models/amazing_facts_model.dart';

class AmazingFactsWidget extends StatefulWidget {
  const AmazingFactsWidget({super.key});

  @override
  State<AmazingFactsWidget> createState() => _AmazingFactsWidgetState();
}

class _AmazingFactsWidgetState extends State<AmazingFactsWidget> {
  List _amazingFacts = [];
  int _currentIndex = 0;
  String _currentFact = '';
  bool isPreviousButtonDisabled = false;
  bool isNextButtonDisabled = false;

  final List _mock_data = [
    {
      'id': 1,
      'fact':
          'The two most successful nations in the tournament’s history are Germany and Spain, with three titles each. '
    },
    {
      'id': 2,
      'fact':
          'Spain is the only nation to successfully defend its title, having done so in 2012.'
    },
    {
      'id': 3,
      'fact':
          'Germany has played the most matches (53), scored the most goals (75) and recorded the most victories (28). '
    },
    {
      'id': 4,
      'fact':
          'In 1984, France became the only nation to win all of its matches at a tournament (5 out of 5). '
    },
    {
      'id': 5,
      'fact':
          'In 1992, Denmark won the title with only two victories in five games. '
    },
    {
      'id': 6,
      'fact':
          'Top goalscorers: Christiano Ronaldo (14 goals), Michel Platini (9 goals), Alan Shearer (7 goals), Antoine Griezmann (7 goals) '
    }
  ];

  //  override init state method
  @override
  void initState() {
    _amazingFacts = AmazingFacts.fromJsonList(_mock_data);
    _currentFact = _amazingFacts[0].fact;
    _currentIndex = 0;
    isPreviousButtonDisabled = true;
    isNextButtonDisabled = false;
    setState(() {
      _amazingFacts;
      _currentFact;
      _currentIndex;
      isPreviousButtonDisabled;
      isNextButtonDisabled;
    });

    super.initState();
  }

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
          const HeaderWidgetWithButton(HomePageWidget(), 'AMAZING FACTS'),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: screenWidth,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12))),
                    height: screenHeight * 0.5,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 100, right: 100, top: 100),
                          child: Text(
                            (_currentIndex + 1).toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(246, 0, 37, 76),
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 50),
                          child: Text(
                            _currentFact,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Color.fromARGB(246, 0, 37, 76),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (_currentIndex > 0) {
                              _currentIndex--;
                              _currentFact = _amazingFacts[_currentIndex].fact;

                              if (_currentIndex == 0) {
                                isPreviousButtonDisabled = true;
                              } else {
                                isPreviousButtonDisabled = false;
                              }

                              setState(() {
                                _currentIndex;
                                _currentFact;
                                isNextButtonDisabled = false;
                              });
                            }
                          },
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
                          onTap: () {
                            if (_currentIndex < _amazingFacts.length - 1) {
                              _currentIndex++;
                              _currentFact = _amazingFacts[_currentIndex].fact;

                              if (_currentIndex == _amazingFacts.length - 1) {
                                isNextButtonDisabled = true;
                              } else {
                                isNextButtonDisabled = false;
                              }
                              setState(() {
                                _currentIndex;
                                _currentFact;
                                isPreviousButtonDisabled = false;
                              });
                            }
                          },
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
