import 'dart:io';

import 'package:expectations_cup/screen/Rigester.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';



import 'package:expectations_cup/screen/MyHomePage.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  bool showPerformance = false;

  onSettingCallback() {
    setState(() {
      showPerformance = !showPerformance;
    });
  }

  @override
  Widget build(BuildContext context) {
    HttpOverrides.global = MyHttpOverrides();
    // TODO: implement build
    final appTitle = 'Animated Dialog Example';
    return MaterialApp(
      title: appTitle,
      showPerformanceOverlay: showPerformance,
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return
        Rigester();
        },
      ),
    );
  }
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

class MyHome extends StatefulWidget {
  final String? title;

  final VoidCallback? onSetting;

  MyHome({Key? key, this.title, this.onSetting}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _MyHomeState extends State<MyHome> {
  // Whether the green box should be visible or invisible

  String? selectedIndexText;

  int? selectIdx;

  String? singleSelectedIndexText;

  int? selectIndex;

  String? multiSelectedIndexesText;

  List<int>? selectedIndexes;

  @override
  Widget build(BuildContext context) {
    return

      Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://marsalqatar.qa/uploads/images/2022/02/aE2yO.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,


      appBar: AppBar(
        title: Text(widget.title ?? ''),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              widget.onSetting?.call();
            },
          )
        ],
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              padding: EdgeInsets.only(left: 15.0),
              height: 35.0,
              alignment: Alignment.centerLeft,
              child: Text('General dialog'),
              color: const Color(0xFFDDDDDD),
            ),
            ListTile(
              title: Text('Default'),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.fade,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Slide from top",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromTop,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Slide from top and fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromTopFade,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Slide from bottom",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromBottom,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Slide from bottom and fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromBottomFade,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Slide from left",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromLeft,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Slide from left and fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromLeftFade,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Slide from right",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromRight,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Slide from right and fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromRightFade,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Scale",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.scale,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Fade scale",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.fadeScale,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Scale rotate",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.scaleRotate,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Rotate",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.rotate,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Fade rotate",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.fadeRotate,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Rotate 3D",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.rotate3D,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Size",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Size fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.sizeFade,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "No animation",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.none,
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(seconds: 1),
                );
              },
            ),
            Divider(
              height: 0.5,
            ),

            ///Classic dialog widget
            Container(
              margin: EdgeInsets.only(bottom: 10.0, top: 50.0),
              padding: EdgeInsets.only(left: 15.0),
              height: 35.0,
              alignment: Alignment.centerLeft,
              child: Text('Classic dialog widget'),
              color: const Color(0xFFDDDDDD),
            ),
            ListTile(
              title: Text(
                "General dialog",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'This is general dialog.',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.linear,
                );
              },
            ),
            Divider(
              height: 0.5,
            ),

            Divider(
              height: 0.5,
            ),

            Divider(
              height: 0.5,
            ),

            Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "Custom dialog",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10.0),
                              width: 200.0,
                              child: FlutterLogo(
                                size: 150.0,
                              ),
                            )
                          ],
                        ));
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.linear,
                );
              },
            ),
            Divider(
              height: 0.5,
            ),
          ],
        ),
      ),
        ),
      );
  }
}