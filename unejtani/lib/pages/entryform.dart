import 'package:flutter/material.dart';
import 'package:unejtani/models/contact.dart';

class EntryForm extends StatefulWidget {
  final Contact contact;

  EntryForm(this.contact);

  @override
  EntryFormState createState() => EntryFormState(this.contact);
}
//class controller
class EntryFormState extends State<EntryForm> {
  Contact contact;
  
  EntryFormState(this.contact);

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();  
  TextEditingController tinggiController = TextEditingController();  
  TextEditingController alergiController = TextEditingController();  
  TextEditingController jenisController = TextEditingController();  
  
  @override
  Widget build(BuildContext context) {
    //kondisi
    if (contact != null) {
      nameController.text = contact.name;
      phoneController.text = contact.phone;
      tinggiController.text = contact.tinggi;
      alergiController.text = contact.alergi;
      jenisController.text = contact.jenis;
    }
    //rubah
    return Scaffold(
      appBar: AppBar(
        title: contact == null ? Text('Tambah') : Text('Rubah'),
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left:10.0, right:10.0),
        child: ListView(
          children: <Widget> [
            // nama
            Padding (
              padding: EdgeInsets.only(top:20.0, bottom:20.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',             
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {                  
                  //                                                    
                },
              ),
            ),

            // telepon
            Padding (
              padding: EdgeInsets.only(top:20.0, bottom:20.0),
              child: TextField(
                controller: phoneController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Alamat Lengkap',                
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {                  
                  //
                },
              ),
            ),

             Padding (
              padding: EdgeInsets.only(top:20.0, bottom:20.0),
              child: TextField(
                controller: tinggiController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Bidang Kewirausahaan',                
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {                  
                  //
                },
              ),
            ),
             Padding (
              padding: EdgeInsets.only(top:20.0, bottom:20.0),
              child: TextField(
                controller: alergiController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'NO KTP',                
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {                  
                  //
                },
              ),
            ),
            Padding (
              padding: EdgeInsets.only(top:20.0, bottom:20.0),
              child: TextField(
                controller: jenisController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Jenis Kelamin',                
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {                  
                  //
                },
              ),
            ),

            // tombol button
            Padding (
              padding: EdgeInsets.only(top:20.0, bottom:20.0),
              child: Row(
                children: <Widget> [
                  // tombol simpan
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Simpan',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        if (contact == null) {
                          // tambah data
                          contact = Contact(nameController.text, phoneController.text, tinggiController.text, alergiController.text, jenisController.text );
                        } else {
                          // ubah data
                          contact.name = nameController.text;
                          contact.phone = phoneController.text;
                        }
                        // kembali ke layar sebelumnya dengan membawa objek contact
                        Navigator.pop(context, contact);
                      },
                    ),
                  ),
                  Container(width: 5.0,),
                  // tombol batal
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Batal',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}