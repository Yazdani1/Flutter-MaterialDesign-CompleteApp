import 'package:flutter/material.dart';
import 'Data.dart';
import 'page/FirstPage.dart';
import 'page/SecondPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  final List<String>listof=["iPhone","Apple","Product","Food Item","Jon Smith","Flutter","Fuchia","Swift"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Material Design App"),
        backgroundColor: Colors.deepPurple,
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            
            new UserAccountsDrawerHeader(
                accountName: new Text("Jon Smith"),
                accountEmail: new Text("jon@gmail.com"),
              decoration: new BoxDecoration(
                color: Colors.deepPurple
              ),
            ),

            new ListTile(
              title: new Text("First Page"),
              leading: new Icon(Icons.add),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext c)=>FirstPage()));
              },
            ),
            new ListTile(
              title: new Text("Second Page"),
              leading: new Icon(Icons.title),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext c)=>SecondPage()));
              },
            ),
            new Divider(
              color: Colors.yellowAccent,
              height: 30.0,
            ),

            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            )

          ],
        ),
      ),//Drawer

      body: new ListView.builder(
          itemBuilder: (_,int index)=>Data(this.listof[index]),
          itemCount: this.listof.length,
      ),

    );
  }
}
