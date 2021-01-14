import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:unejtani/models/utility.dart';
import 'package:unejtani/data/database.dart';
import 'package:unejtani/models/mfoto.dart';
import 'package:unejtani/pages/home.dart';
import 'dart:async';
import 'package:unejtani/pages/profil.dart';
import 'package:unejtani/pages/chat.dart';
import 'package:unejtani/pages/friendlist.dart';
import 'package:unejtani/pages/login/login_page.dart';
 
class SaveImageDemoSQLite extends StatefulWidget {
  //
  SaveImageDemoSQLite() : super();
 
  final String title = "Gambar";
 
  @override
  _SaveImageDemoSQLiteState createState() => _SaveImageDemoSQLiteState();
}
 
class _SaveImageDemoSQLiteState extends State<SaveImageDemoSQLite> {
  //
  Future<File> imageFile;
  Image image;
  DBHelper dbHelper;
  List<Photo> images;
 
  @override
  void initState() {
    super.initState();
    images = [];
    dbHelper = DBHelper();
    refreshImages();
  }
 
  refreshImages() {
    dbHelper.getPhotos().then((imgs) {
      setState(() {
        images.clear();
        images.addAll(imgs);
      });
    });
  }
 
  pickImageFromGallery() {
    ImagePicker.pickImage(source: ImageSource.gallery).then((imgFile) {
      String imgString = Utility.base64String(imgFile.readAsBytesSync());
      Photo photo = Photo(0, imgString);
      dbHelper.save(photo);
      refreshImages();
    });
  }
 
  gridView() {
    return Padding(
      
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: images.map((photo) {
          return Utility.imageFromBase64String(photo.photo_name);
        }).toList(),
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              pickImageFromGallery();
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: gridView(),
            )
          ],
        ),
      ),
    );
  }
}
class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Menu ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
           onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SaveImageDemoSQLite())),},
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Profil'),
            onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home())),},
          ),
           ListTile(
            leading: Icon(Icons.attach_email_outlined),
            title: Text('Chat'),
            onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Chatapp())),},
          ),
          ListTile(
            leading: Icon(Icons.face_rounded),
            title: Text('Teman'),
            onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Friendlist())),},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
             onTap: () => {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage())),},
          ),
        ],
      ),
    );
  }
}