import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  
  final String name;
  Data(this.name);
  
  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 6.0,
      margin: EdgeInsets.all(10.0),
      child: new Container(

        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(7.0),

        child: new Row(
          children: <Widget>[
            
            new CircleAvatar(
              child: new Text(name[0]),
              backgroundColor: Colors.deepOrange,
            ),
            new Padding(padding: EdgeInsets.all(10.0)),
            
            new Text(name,style: new TextStyle(fontSize: 20.0),)
            
            
          ],
        ),
        
      ),
      
    );
  }
}
