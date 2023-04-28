
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quickalert/quickalert.dart';
import 'package:test3/donate_page.dart';

class TestPages extends StatefulWidget {
  const TestPages({super.key});

  @override
  State<TestPages> createState() => _TestPagesState();
}

class _TestPagesState extends State<TestPages> {
  late int passTest = 0;      //كونتر بيزيد لما بضغط لا للاجابة على السؤال
  
  late PageController pc;     //عشان اعرف اتحكم في التنقل بين الصفحات
  
  @override
  void initState() {          //اول ما الصحة تحمل اعمل اوبجكت منه
    pc = new PageController();
    super.initState();
  }
  
  //دي عبارة عن ليست من الماب بتاخد 2 سترينج السؤال و الصورة بتاع كل صفحة
  List testData = [
    {
      "text": "هل أصبت ، أو أصبت بأي من أمراض القلب ؟",
      "image": "assets/icons/heart.png"
    },
    {
      "text": "هل تلقيت تطعيم ضد فيروس كورونا خلال الـ 48 ساعة الماضية؟",
      "image": "assets/icons/vacine.png"
    },
    {
      "text":
          "في الأسابيع الأربعة الماضية ، هل كنت على اتصال بأي شخص مصاب بمرض معدي؟",
      "image": "assets/icons/disaese-removebg-preview.png"
    },
    {
      "text":
          "هل اصبت بأي عدوى في آخر اسبوعين او تناولت اي مضادات حيويه خلال اخر سبع ايام؟",
      "image": "assets/icons/person.png"
    },
    {
      "text":
          "انتهى الاختبار",
      "image": "assets/icons/medicine.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width; //بتحسب عرض الموبايل وبتخلي الويدجت تاخد عرض الموبايل
    //
    //بتظهر رسالة لليوزر انه عدى الاختبار لما يخلص اجابة على كل الاسئلة
    pass({required int page}) {
      if (passTest == 4 && page == 4) {
        print(passTest);
        return QuickAlert.show(
            type: QuickAlertType.success,
            context: context,
            title: "يمكنك التبرع",
            text: "ستصلك رسالة قريبا بموعد ومكان التبرع, شكرا لتبرعك معنا",
            onConfirmBtnTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (v){   //v كناية عن محتوى الصفحة الي هروحلها
                  return Donate_page();
                })
              );
            },
            );
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF15C62),
      ),
      body: SafeArea(
          child: Column(
        children: [
          //عشان اعمل سلايد بين الاسئلة
          Expanded(
              child: PageView.builder(
            controller: pc,
            itemCount: testData.length,
            itemBuilder: (context, i) {      //دي الويدجت الي هعمل بيها كل صفحة و الاي دي عدد الصفحات
              return TextAndImage(
                list: testData[i],
                mdw: mdw,
              );
            },
            onPageChanged: (value) => pass(page: value),  //كل ما اتنقل من صفحة لتانية هيستدعي دالة الباس الي هتتأكد انه جاوب على كل الاسئلة
          )),
          //
          //الجزء دا هعمل فيه ازرار نعم ولا
          Container(
            margin: EdgeInsets.only(bottom: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //لما اضغط على نعم بيظهر رسالة تنبيه
                Container(
                  child: MaterialButton(
                    onPressed: () {
                      QuickAlert.show(
                        type: QuickAlertType.warning,
                        context: context,
                        title: "تنبيه",
                        text: "قد يتسبب ذلك في خطوره عليك التواصل مع طبيبك لمعرفه ما اذا كان بامكانك التبرع");
                    },
                    child: Text(
                      "نعم",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    color: Color(0xffF15C62),
                  ),
                ),
                //
                SizedBox(
                  width: 30,
                ),
                //
                //لما اضغط على لا هينقلني للصفحة الي بعدها ويزود متغير الباس عشان اعرف عدد الاسئلة الي جاوب عليها بلا
                Container(
                  child: MaterialButton(
                    onPressed: () {
                      pc.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                      passTest++;
                      print(passTest);
                    },
                    child: Text(
                      "لا",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    color: Color(0xffF15C62),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class TextAndImage extends StatelessWidget {    //دا كلاس الويدجت بيحتوي على
  final list;     //هباصي الليست بتاع النص و الصور للمتغير دا
  final mdw;      //عشان اضبط احجام الويدجت بالنسبة للصفحة
  const TextAndImage({Key? key, this.list, this.mdw}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: mdw / 6),
          child: Text(
            "اختبار امكانية التبرع",   //عنوان الصفح
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        //
        SizedBox(
          height: 30,
        ),
        //
        Container(
          padding: EdgeInsets.all(50),
          child: Text(
            "${list['text']}",          //الاسئلة الي هاخدها من الليست بتاع الاسئلة والصور
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        //
        SizedBox(
          height: 20,
        ),
        //
        Image.asset(
          "${list['image']}",    //الصور الي هاخدها من الليست بتاع الاسئلة والصور
          width: mdw / 2,
        ),
      ],
    ));
  }
}
