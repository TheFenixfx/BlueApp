import 'package:flutter/material.dart';
import '../asyncWidgets/PhrasePicker.dart';

/*
Use asyncwodgets to write and simulate getting data from local or external source
*/ 
class StringPicker extends StatelessWidget {

  PhrasePicker _phrasePicker = new PhrasePicker();
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
     future: _phrasePicker.pickPhrase(),
     builder: (context,snapshot){
        if(snapshot.connectionState == ConnectionState.active){
          return Text('active');
        }
        else if(snapshot.connectionState == ConnectionState.done){
          return Text(snapshot.data);
        }
        else if(snapshot.connectionState == ConnectionState.none){
          return Text('not connected');
        }
        else if(snapshot.connectionState == ConnectionState.waiting){
          return Text('only waiting');
        }
        return Text("unsucessfull");
     }, 
    );
  }
}