import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/functions/validinput.dart';
import 'auth/customtextformauth.dart';
class Expectation_Card extends StatefulWidget {
  const Expectation_Card({Key? key}) : super(key: key);

  @override
  _Expectation_CardState createState() => _Expectation_CardState();
}

class _Expectation_CardState extends State<Expectation_Card> {
  TextEditingController link=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image:DecorationImage(image: NetworkImage(
                            "https://tpowep.com/img.png",
                          )
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("البرازيل",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 200,
                          height: 100,
                          child: CustomTextFormAuth(
                            border: 20,
                            hinttext: 'البرازيل',

                            labeltext:
                            '',
                            iconData: Icons.add_link,
                            mycontroller: link,
                            isNumber: true, valid: (String ) {  },

                          )),
                    ),
                  ],
                )),

                Expanded(child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(22)


                        ),
                        child: Text("22/09/2022",style: TextStyle(fontSize: 12,color: Colors.white),),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(22)


                        ),
                        child: Text("10:00",style: TextStyle(fontSize: 12,color: Colors.white),),
                      ),
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image:DecorationImage(image: NetworkImage(
                            "https://tpowep.com/img.png",
                          )
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("البرازيل",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 200,
                          height: 100,
                          child: CustomTextFormAuth(

                            valid: (val) { return validInput(val!, 5, 11, "");},
                            border: 20,
                            hinttext: 'البرازيل',

                            labeltext:
                            '',
                            iconData: Icons.add_link,
                            mycontroller: link,
                            isNumber: true,

                          )),
                    ),
                  ],
                )
                ),              ],
            ),
            Row(
                children: [
                  Expanded(child:

                  MaterialButton(onPressed: (){
                    Navigator.pop(context);
                  },
                    minWidth: double.infinity,
                    child: Text("توقع للمبارة",style: TextStyle(color: Colors.white),),
                    color: Colors.deepOrange,
                  ))

                ]
            ),






          ],
        ),
      );

  }
}

