import 'package:flutter/material.dart';
import 'package:unejtani/pages/foto.dart';
import 'package:unejtani/pages/login/login_page.dart';
import 'package:unejtani/pages/login/register.dart';

void main() => runApp(MyApp());

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) => new SaveImageDemoSQLite(),
  '/register': (BuildContext context) => new RegisterPage(),
  '/': (BuildContext context) => new LoginPage(),
};

class MyApp extends StatelessWidget {
 
 @override
 Widget build(BuildContext context){
   return new MaterialApp(
     title: 'Pertanian',
     theme: new ThemeData(primarySwatch: Colors.teal),
     routes: routes,
   );
 }
}
