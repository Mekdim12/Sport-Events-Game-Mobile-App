import 'package:flutter/material.dart';
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
  int _currentIndex = 0;
  final List<List> pagesItems = [
    const [
      CustomTable({
        'label': 'Group A',
        'border_radius': BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        'padding': 10.0
      }, 61, true),
      CustomTable({
        'items': [
          {
            'flag_icon': AssetImage('assets/icons/flags/germany.png'),
            'team_name': 'Germany'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/scotland.png'),
            'team_name': 'scotland'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/hungary.png'),
            'team_name': 'hungary'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/switzerland.png'),
            'team_name': 'switzerland'
          },
        ],
        'border_radius': BorderRadius.zero,
        'padding': 10.0
      }, 61, false),
      CustomTable({
        'label': 'Group B',
        'border_radius': BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        'padding': 10.0
      }, 61, true),
      CustomTable({
        'items': [
          {
            'flag_icon': AssetImage('assets/icons/flags/spain.png'),
            'team_name': 'spain'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/crotia.png'),
            'team_name': 'crotia'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/italy.png'),
            'team_name': 'italy'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/albania.png'),
            'team_name': 'albania'
          },
        ],
        'border_radius': BorderRadius.zero,
        'padding': 10.0
      }, 61, false),
      CustomTable({
        'label': 'Group C',
        'border_radius': BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        'padding': 10.0
      }, 61, true),
      CustomTable({
        'items': [
          {
            'flag_icon': AssetImage('assets/icons/flags/slovenia.png'),
            'team_name': 'slovenia'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/denmark.png'),
            'team_name': 'denmark'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/serbia.png'),
            'team_name': 'serbia'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/england.png'),
            'team_name': 'england'
          },
        ],
        'border_radius': BorderRadius.zero,
        'padding': 10.0
      }, 61, false),
    ],
    const [
      CustomTable({
        'label': 'Group D',
        'border_radius': BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        'padding': 10.0
      }, 61, true),
      CustomTable({
        'items': [
          {
            'flag_icon': AssetImage('assets/icons/flags/netherlands.png'),
            'team_name': 'netherlands'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/austria.png'),
            'team_name': 'austria'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/france.png'),
            'team_name': 'france'
          },
        ],
        'border_radius': BorderRadius.zero,
        'padding': 10.0
      }, 61, false),
      CustomTable({
        'label': 'Group E',
        'border_radius': BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        'padding': 10.0
      }, 61, true),
      CustomTable({
        'items': [
          {
            'flag_icon': AssetImage('assets/icons/flags/belgium.png'),
            'team_name': 'belgium'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/slovakia.png'),
            'team_name': 'slovakia'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/romania.png'),
            'team_name': 'romania'
          },
        ],
        'border_radius': BorderRadius.zero,
        'padding': 10.0
      }, 61, false),
      CustomTable({
        'label': 'Group F',
        'border_radius': BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        'padding': 10.0
      }, 61, true),
      CustomTable({
        'items': [
          {
            'flag_icon': AssetImage('assets/icons/flags/turkey.png'),
            'team_name': 'turkey'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/portugal.png'),
            'team_name': 'portugal'
          },
          {
            'flag_icon': AssetImage('assets/icons/flags/czech.png'),
            'team_name': 'czech'
          },
        ],
        'border_radius': BorderRadius.zero,
        'padding': 10.0
      }, 61, false),
    ]
  ];

  //  override init state method
  @override
  void initState() {
    _currentIndex = 0;
    isPreviousButtonDisabled = true;
    isNextButtonDisabled = false;
    
    setState(() {
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
          const HeaderWidgetWithButton(HomePageWidget(), 'Participants'),
          Padding(
            padding: const EdgeInsets.only(
              top: 110,
            ),
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Container(
                    width: screenWidth,
                    decoration: const BoxDecoration(
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ...pagesItems[0],
                        ],
                      ),
                    ),
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
        ],
      ),
    );
  }
}
