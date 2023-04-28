import 'package:flutter/material.dart';
import 'package:test3/bloodInfo_page.dart';
import 'package:test3/home_page.dart';
import 'package:test3/urgentMsg_page.dart';

import 'donors_page.dart';
import 'logupscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {    //الكونتكست دا كناية عن محتوى الصفحة
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Tajawal",
      textTheme: TextTheme(
        headlineMedium: TextStyle(color: Color(0xffF15C62),fontWeight: FontWeight.bold))
      ),
      home: HomePage(),
      //home: DonersPage(),
      //home: LogupScreen(),
      //home: UrgentMsgPage(),
      //home: BloodInfoPage(),
    );
  }
}

