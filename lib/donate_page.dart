import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test3/profile_page.dart';
import 'test_pages.dart';

class Donate_page extends StatelessWidget {
  const Donate_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF15C62),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "ابدأ معنا في انقاذ الارواح",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )),
          Container(
              width: 300,
              child: Text("نرجو منك ملء الاستمارة التالية ببياناتك",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 20))),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (v) {
                  //v كناية عن محتوى الصفحة الي هروحلها
                  return Profile_page();
                }));
              },
              child: Text(
                "ابدأ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              color: Color(0xffF15C62),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (v) {
                    //v كناية عن محتوى الصفحة الي هروحلها
                    return TestPages();
                  }));
                },
                child: Text(
                  "الاختبار",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF15C62)),
                ),
              ),
              Text("يمكنك التحقق من امكانية تبرعك عن طريق هذا "),
            ],
          ),
        ],
      ),
    );
  }
}
