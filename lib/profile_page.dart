import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile_page extends StatefulWidget {

  // late String email;
  // late String password;
  // Profile_page(String e, String p) {   //هستلم الداتا بتاع الصفحة في الكونستراكتور
  //   this.email;
  //   this.password;
  // }

  Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Text(this.widget.email),
      //     Text(this.widget.password)
      //   ],
      // ),
    );
  }
}