import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resumeflutter/AppProvider/AppProvider.dart';
import 'package:resumeflutter/ui/Contact.dart';
import 'package:resumeflutter/ui/Education.dart';
import 'package:resumeflutter/ui/Experiences.dart';
import 'package:resumeflutter/ui/Introduction.dart';
import 'package:resumeflutter/utils/contants.dart';

import 'About.dart';
import 'Skills.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController;
  double elevation = 0;
  Color backgroundColor = defaultLight;

  scrollListener() {
    if (scrollController.offset <= scrollController.position.minScrollExtent &&
        !scrollController.position.outOfRange) {
      setState(() {
        backgroundColor = defaultLight;
        elevation = 0;
      });
    } else
      setState(() {
        backgroundColor = defaultDart;
        elevation = 1;
      });
  }

  @override
  void initState() {
    // TODO: implement initState
    scrollController = ScrollController();
    scrollController.addListener(scrollListener);
    super.initState();
  }

  List<String> tops = [
    'Intro',
    'About',
    'Education',
    'Skills',
    'Experience',
    'Contact Me'
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    List<double> height = [
      size.height * 0.80,
      size.height * 60,
      size.height * 60,
      size.height * 70,
      size.height * 80,
      size.height * 50,
    ];
    var provider = Provider.of<AppProvider>(context);
    return Scaffold(
      backgroundColor: defaultLight,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: elevation,
        actions: <Widget>[
          ListView.builder(
            itemCount: tops.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  scrollController.animateTo(
                    index * size.height * 0.60,
                    duration: Duration(seconds: 1),
                    curve: Curves.linear,
                  );
                  provider.setCurrentIndex(index);
                },
                child: Text(
                  tops[index],
                  style: TextStyle(
                    color: index == provider.currentIndex
                        ? defaultYellow
                        : defaultGrey,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: NotificationListener(
        // ignore: missing_return
        onNotification: (scrollNotification) {
          provider.setCurrentIndex(
            scrollController.offset ~/ (size.height * 0.60),
          );
        },
        child: ListView(
          controller: scrollController,
          shrinkWrap: true,
          children: <Widget>[
            Introduction(),
            About(),
            Education(),
            Skills(),
            Experiences(),
            Contact(),
          ],
        ),
      ),
    );
  }
}
