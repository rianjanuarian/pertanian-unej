import 'package:flutter/material.dart';  

class Friendlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Daftar Relasi"),
      ),
      body: new Container(
        child: ListView(
          children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 100.0,
                       height: 100.0,
                       color: Colors.green,
                       child: new Icon(Icons.account_circle_outlined, color: Colors.white, size: 50.0,),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.all(15.0),
                         height: 100.0,
                         color: Colors.blue[200],
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Yoga Cahya", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                             
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 100.0,
                       height: 100.0,
                       color: Colors.green,
                       child: new Icon(Icons.account_circle_outlined, color: Colors.white, size: 50.0,),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.all(15.0),
                         height: 100.0,
                         color: Colors.blue[200],
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Daffa Ammar ", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                           
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 100.0,
                       height: 100.0,
                       color: Colors.green,
                       child: new Icon(Icons.account_circle_outlined, color: Colors.white, size: 50.0,),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.all(15.0),
                         height: 100.0,
                         color: Colors.blue[200],
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Nauval Rizaldi", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                             
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),
               Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 100.0,
                       height: 100.0,
                       color: Colors.green,
                       child: new Icon(Icons.account_circle_outlined, color: Colors.white, size: 50.0,),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.all(15.0),
                         height: 100.0,
                         color: Colors.blue[200],
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Qomarudin", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                             
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),
               Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 100.0,
                       height: 100.0,
                       color: Colors.green,
                       child: new Icon(Icons.account_circle_outlined, color: Colors.white, size: 50.0,),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.all(15.0),
                         height: 100.0,
                         color: Colors.blue[200],
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Ilham Mubarak", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                         
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),
               Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 100.0,
                       height: 100.0,
                       color: Colors.green,
                       child: new Icon(Icons.account_circle_outlined, color: Colors.white, size: 50.0,),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.all(15.0),
                         height: 100.0,
                         color: Colors.blue[200],
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Bryan Vidyanjaya", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                             
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),
               Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                     Container(
                       width: 100.0,
                       height: 100.0,
                       color: Colors.green,
                       child: new Icon(Icons.account_circle_outlined, color: Colors.white, size: 50.0,),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.all(15.0),
                         height: 100.0,
                         color: Colors.blue[200],
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text("Mahendra", style: TextStyle(color: Colors.white, fontSize: 15.0)),
                             
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),
             
              
          ],
        ),
      ),
    );
  }
}
