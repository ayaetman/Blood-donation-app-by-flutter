import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quickalert/quickalert.dart';

class UrgentMsgPage extends StatefulWidget {
  const UrgentMsgPage({super.key});

  @override
  State<UrgentMsgPage> createState() => _UrgentMsgPageState();
}

class _UrgentMsgPageState extends State<UrgentMsgPage> {
  List<String> bloodTypes = ["+O", "-O", "+A", "-A", "+B", "-B", "+AB", "-AB"];

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width; //بتحسب عرض الموبايل وبتخلي الويدجت تاخد عرض الموبايل
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffF15C62),),
      body: Column(
        children: [
        //Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.end,
          // children: [
          Container(
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.only(bottom: 10),
            width: mdw,
            child: TextFormField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                //label: Text("اسم المريض: ",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                hintText: "اسم المريض: ",
                hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
                hintTextDirection: TextDirection.rtl,
              ),
            )),
            Container(
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.only(bottom: 10),
            width: mdw,
            child: TextFormField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                //label: Text("اسم المريض: ",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                hintText: "حالة المريض: ",
                hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
                hintTextDirection: TextDirection.rtl,
              ),
            )),
            Container(
              //color: Color(0xffFFBBBB),
              margin: EdgeInsets.all(10),
              child: DropdownSearch(
                items: bloodTypes,
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    hintTextDirection: TextDirection.rtl,
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
                    hintText: "فصيلة الدم المريض",
                  ),
                ),
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 235),
              padding: const EdgeInsets.only(top: 20),
              child: Text(": وصف المشكلة",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                maxLines: 3,
                minLines: 1,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            ),
            //SizedBox(height: 20,),
            MaterialButton(onPressed: () {
              QuickAlert.show(
                        type: QuickAlertType.success,
                        context: context,
                        title: "تم ارسال رسالتك بنجاح",
                        text: "سنحاول تلبية طلبك في اقرب وقت");
            },
            child: Text("ارسال",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    color: Color(0xffF15C62),)
            
            
          // Container(
          //   margin: EdgeInsets.all(25),
          //   child: Text("اسم المريض: ",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        //   ],
        // )
      ]),
    );
  }
}