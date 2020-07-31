import 'package:flutter/material.dart';
import 'package:resumeflutter/Model/ModelExperience.dart';

String cVUrl = "https://drive.google.com/file/d/1u89Y1kHjrEX_uO_uNidTzZg9a31roS1w/view?usp=sharing";

Color defaultLight = Color(0xff2b2c2c);
Color defaultDart = Color(0xff252525);
Color defaultLighter = Color(0xff303131);
Color defaultYellow = Color(0xfffeb633);
Color defaultGrey = Color(0xffcccccc);
Color tileColor = Color(0xff333333);
Color descColor = Color(0xff5a656b);
double limit = 1000;

TextStyle defaultBold = TextStyle(
  color: Colors.white,
  fontSize: 50,
  fontWeight: FontWeight.w500,
);
TextStyle defaultStyleSmall = TextStyle(
  color: Colors.white,
  fontSize: 30,
);
TextStyle defaultButtonStyle = TextStyle(
  color: defaultYellow,
  fontSize: 20,
  fontWeight: FontWeight.w500,
);

TextStyle defaultStyle = TextStyle(
  color: defaultGrey,
  fontSize: 24,
  fontWeight: FontWeight.w100,
);

TextStyle styleDescription = TextStyle(
    color: defaultGrey, fontSize: 16, fontWeight: FontWeight.w100, height: 1.5);

TextStyle styleRole = TextStyle(
  color: Colors.white,
  fontSize: 24,
);

TextStyle styleCompany = TextStyle(
  color: descColor,
  fontSize: 16,
  fontWeight: FontWeight.w100,
);

String about =
    "I'm Kamal Garg, currently persuing integrated Btech(IT)+MBA"
    " from Indian Institute of Information Technology and Management, Gwalior. I'm a Machine Learning enthusiast"
    ", with a keen understanding of Python, R, C/C++,"
    " Data Structures and Algorithms.\n\n"
    "Other than coding, I am a fitness freak who loved particitating in various sports and "
    "cultural events and my other interests "
    "include Snooker, Table Tennis, Cricket,Sci-fi movies & exploring latest technology "
    "advancements in the developing world.";

String experience = 'The only source of knowledge is experience';

List<ModelExperience> exp = [
  ModelExperience(
    'Aug 2019 - Oct 2019',
    "E-commerce Assistant",
    "Gaotek Groups",
    'Worked as a technical support intern and learned on job digital marketing and e-commerce management with working on Amazon Sales Team',
  ),
];

List<ModelExperience> education = [
  ModelExperience(
    'April 2004 - March 2018',
    'Inter School Student',
    'Ingraham Institute English School',
    'Percentage - 89.60 % in 12th ISC Board',
  ),
  ModelExperience(
    'August 2018 - Present',
    'B.Tech Student',
    'Indian Institute of Information Technology and Management Gwalior',
    'Currently pursuing a 5 year course Integrated B.Tech+MBA in Information Technology',
  ),
];

List<String> language = [
  'C',
  'C++',
  'Python',
  'R',
  'Java',
];

List<String> langImage = [
  'assets/images/c.png',
  'assets/images/cpp.png',
  'assets/images/python.png',
  'assets/images/r.png',
  'assets/images/java.png',
];

List<String> tools = [
  'Machine Learning',
  'mySQL',
  'Git',
  'Arduino',
  'Linux',
];

List<String> toolsImage = [
  'assets/images/ml.png',
  'assets/images/sql.png',
  'assets/images/git.png',
  'assets/images/arduino.png',
  'assets/images/linux.png',
];

List<String> social = [
  'assets/images/github.png',
  'assets/images/codechef.png',
  'assets/images/codeforces.png',
  'assets/images/hackerrank.png',
  'assets/images/instagram.png',
  'assets/images/linkedin.png',
];

List<String> socialName = [
  'Github',
  'Codechef',
  'Codeforces',
  'Hackerrank',
  'Instagram',
  'Linkedin',
];
