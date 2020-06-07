import 'package:flutter/material.dart';
import '../asyncWidgets/PhrasePicker.dart';

/*
Show progress loading resources
*/

class PhraseLine extends StatefulWidget {
  @override
  _PhraseLineState createState() => _PhraseLineState();
}

class _PhraseLineState extends State<PhraseLine> {

  String stringbuff;
  @override
  void initState() {
    super.initState();
   /* setState(()  {
      PhrasePicker.pickPhrase();
     if(PhrasePicker.longCharge.length > 0){
    stringbuff = PhrasePicker.longCharge.removeLast();
    }else{
    stringbuff = "invalid data";
    }
      // The state that has changed here is the animation object’s value.
    });*/
  }

  @override
  Widget build(BuildContext context) {
  
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: Text(
            stringbuff,
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }
}
