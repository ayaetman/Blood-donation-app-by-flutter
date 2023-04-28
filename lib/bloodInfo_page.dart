import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BloodInfoPage extends StatefulWidget {
  const BloodInfoPage({super.key});

  @override
  State<BloodInfoPage> createState() => _BloodInfoPageState();
}

class _BloodInfoPageState extends State<BloodInfoPage> {

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width; //بتحسب عرض الموبايل وبتخلي الويدجت تاخد عرض الموبايل
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF15C62),
      ),
      body: Container(
        color: Color(0xffFFE4C0),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 40,left: 20,right: 20),
              child: Text(
                "معلومات عن فصائل الدم",   //عنوان الصفح
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Container(
              //width: 250,
              margin: EdgeInsets.all(20),
              child: Text("تؤثّر فصيلة الدم على عملية التبرّع بالدم واختيار المتبرّع، حيث أنّ الجسم يقبل الدم الذي يحتوي على مستضدّات يعرفها مسبقًا، حيث لا يعتبرها دخيلة وبالتالي لا يرفضها الجهاز المناعي، أمّا إذا تلقى دم يحتوي على مستضدّات جديدة عليه عندها سيرفضها ويحدث تكتّل وانكماش في الدم"
              ,textAlign: TextAlign.right,style: TextStyle(fontSize: 25),),
              ),
              Container(
                child: Image.asset("assets/icons/types.png"),
              )
          ],),
        ),
      ),
    );
  }
}