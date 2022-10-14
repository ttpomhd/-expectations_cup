import 'package:expectations_cup/Widget/Card_Match.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return

      Container(
        constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage("img/bk.jpg"), fit: BoxFit.cover)),
    child: Scaffold(
    backgroundColor: Colors.transparent,


    body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Card_Match(),
            Card_Match(),

            Card_Match(),

            Card_Match(),

            Card_Match(),



          ],

        ),
      ),
    ),
    );
  }
}
