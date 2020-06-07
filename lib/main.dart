import 'package:flutter/material.dart';
import 'package:markup/utilities/StringPicker.dart';
import 'package:markup/utilwidgets/progressbar.dart';
import 'package:markup/animations/fade_in_out_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue Wolf',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Blue Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 350,
            margin: EdgeInsets.only(bottom: 130),
            alignment: Alignment.center,
            child: FadeInOutAnimation(),
          ),
          Column(
            children: [
              StringPicker(),
              ProgressBar()
            ],
          )
        ],
      ),
    );
  }
}
