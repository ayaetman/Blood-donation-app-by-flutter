//import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:test3/model/doners_model.dart';

class DonersPage extends StatefulWidget {
  DonersPage({super.key});

  @override
  State<DonersPage> createState() => _DonersPageState();
}

class _DonersPageState extends State<DonersPage> {
  TextEditingController textController = TextEditingController();

  static List<DonersModel> donersList = [
    DonersModel("اروى علاء الدين", "المنصورة", "+201012345678", "+A"),
    DonersModel("اماني ناصر", "المنصورة", "+201012345678", "-A"),
    DonersModel("ايه عتمان", "المنصورة", "+201012345678", "+B"),
    DonersModel("احمد عباس", "المنصورة", "+201012345678", "-B"),
    DonersModel("احمد حلمي", "المنصورة", "+201012345678", "+O"),
    DonersModel("اروى علاء الدين", "المنصورة", "+201012345678", "+A"),
    DonersModel("اماني ناصر", "المنصورة", "+201012345678", "-A"),
    DonersModel("ايه عتمان", "المنصورة", "+201012345678", "+B"),
    DonersModel("احمد عباس", "المنصورة", "+201012345678", "-B"),
    DonersModel("احمد حلمي", "المنصورة", "+201012345678", "+O"),
  ];
  List<DonersModel> donersList_display = List.from(donersList);

  List<String> bloodTypes = ["+O", "-O", "+A", "-A", "+B", "-B", "+AB", "-AB"];

  void updateList(String value) {
    setState(() {
      donersList_display = donersList
          .where((element) => element.doner_bloodType!.contains(value))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          backgroundColor: Color(0xffF15C62),
          title: Text(
            "المتبرعين",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          titleSpacing: 140,
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xffFFBBBB),
              margin: EdgeInsets.all(20),
              child: DropdownSearch<String>(
                items: bloodTypes,
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    hintTextDirection: TextDirection.rtl,
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
                    hintText: "اختر فصيلة الدم",
                  ),
                ),
                onChanged: (value) => updateList(value!),
              ),
            ),
            Expanded(
              child: 
            donersList_display.length == 0 ?Center(child: Text("No result found",
            style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),)
              : ListView.separated(
                itemBuilder: (context, index) => buildDoner(index: index),
                separatorBuilder: (context, index) => Divider(),
                itemCount: donersList_display.length,
              ),
            ),
          ],
        ),);
  }

  Widget buildDoner({required int index}) => Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  donersList_display[index].doner_name!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  donersList_display[index].doner_location!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  donersList_display[index].doner_phone!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            width: 70,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      //بيخلي الصورة مدورة
                      backgroundColor: Color(0xffFFBBBB),
                      backgroundImage: AssetImage("assets/icons/donor3.png"),
                      radius: 30,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(bottom: 2, end: 3),
                      child: Container(
                        margin: EdgeInsets.only(top: 5),
                        child: CircleAvatar(
                          radius: 13,
                          backgroundImage:
                              AssetImage("assets/icons/blood-drop.png"),
                          child: Container(
                            margin: EdgeInsets.only(right: 5, top: 5, left: 2),
                            child: Text(
                                donersList_display[index].doner_bloodType!,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          backgroundColor: Color(0xffFFBBBB),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ]),
      );
}
