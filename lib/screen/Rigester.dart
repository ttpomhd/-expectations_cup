import 'package:expectations_cup/Widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';

import '../Widget/auth/custombuttonauth.dart';
import '../core/functions/validinput.dart';
class Rigester extends StatefulWidget {
  const Rigester({Key? key}) : super(key: key);

  @override
  _RigesterState createState() => _RigesterState();
}

class _RigesterState extends State<Rigester> {
  TextEditingController textEditingController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage("img/bk.jpg"), fit: BoxFit.cover)),
    child: Scaffold(
    backgroundColor: Colors.transparent,


    body: Container(
      color: Colors.white.withOpacity(0.6),
child: ListView(
  children: [
    SizedBox(height: 100,),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextFormAuth(hinttext: "الاسم", labeltext: "", iconData: Icons.person,border: 10.0,
          mycontroller: textEditingController, valid: (val) { return validInput(val!, 5, 11, "");},
          isNumber: false),

    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextFormAuth(hinttext: "العمر", labeltext: "", iconData: Icons.person,border: 10.0,
          mycontroller: textEditingController, valid: (val) { return validInput(val!, 5, 11, "");},
          isNumber: false),
    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextFormAuth(hinttext: "اسم المستخدم", labeltext: "", iconData: Icons.person,border: 10.0,
          mycontroller: textEditingController, valid: (val) { return validInput(val!, 5, 11, "");},
          isNumber: false),

    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextFormAuth(hinttext: "كلمة المرور", labeltext: "", iconData: Icons.person,border: 10.0,
          mycontroller: textEditingController, valid: (val) { return validInput(val!, 5, 11, "");},
          isNumber: false),

    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextFormAuth(hinttext: "البلد", labeltext: "", iconData: Icons.person,border: 10.0,
          mycontroller: textEditingController, valid: (val) { return validInput(val!, 5, 11, "");},
          isNumber: false),

    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextFormAuth(hinttext: "المدية", labeltext: "", iconData: Icons.location_city,border: 10.0,
          mycontroller: textEditingController, valid: (val) { return validInput(val!, 5, 11, "");},
          isNumber: false),

    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextFormAuth(hinttext: "الهاتف", labeltext: "", iconData: Icons.phone,border: 10.0,
          mycontroller: textEditingController, valid: (val) { return validInput(val!, 5, 11, "");},
          isNumber: false),

    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextFormAuth(hinttext: "الفريق المفضل", labeltext: "", iconData: Icons.person,border: 10.0,
          mycontroller: textEditingController, valid: (val) { return validInput(val!, 5, 11, "");},
          isNumber: false),

    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextFormAuth(hinttext: "تاريخ الميلاد", labeltext: "", iconData: Icons.person,border: 10.0,
          mycontroller: textEditingController, valid: (val) { return validInput(val!, 5, 11, "");},
          isNumber: false),

    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomButtomAuth(text: 'تسجيل',onPressed: () {}
      ),
    )


  ],
),
    ) ,
    ) ,

    );
  }
}
