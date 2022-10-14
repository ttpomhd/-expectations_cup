import 'package:expectations_cup/Widget/expectations_card.dart';
import 'package:flutter/material.dart';


import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';



class Card_Match extends StatefulWidget {
  const Card_Match({Key? key}) : super(key: key);

  @override
  _Card_MatchState createState() => _Card_MatchState();
}

class _Card_MatchState extends State<Card_Match> {
  @override
  Widget build(BuildContext context) {
    return
      ListTile(

      title: Container(

        decoration: BoxDecoration(


          color: Colors.white.withOpacity(0.7),


        ),

        width: MediaQuery.of(context).size.width,
        child: Column(
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
                    )
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
                  ],
                )
                ),              ],
            ),
            Row(
                children: [
                  Expanded(child: MaterialButton(onPressed: (){
                    showAnimatedDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return
Material(
    shadowColor: Colors.yellow,
    child: Container(
    height: 155,
    child: Expectation_Card()));
                      },
                      animationType: DialogTransitionType.scaleRotate,
                      curve: Curves.fastOutSlowIn,
                      duration: Duration(seconds: 1),
                    );

                  },
                    minWidth: double.infinity,
                    child: Text("توقع للمبارة",style: TextStyle(color: Colors.white),),
                    color: Colors.deepOrange,
                  ))

                ]
            ),






          ],
        ),
      ),

    );

  }
}
