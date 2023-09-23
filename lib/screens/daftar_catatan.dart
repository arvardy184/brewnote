import 'package:brewnote/models/Catatan.dart';
import 'package:brewnote/screens/buat_catatan.dart';
import 'package:brewnote/screens/detail_catatan.dart';
import 'package:flutter/material.dart';

class DaftarCatatan extends StatefulWidget {
  @override
  _DaftarCatatanState createState() => _DaftarCatatanState();
}

class _DaftarCatatanState extends State<DaftarCatatan> {
  List<Catatan> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Catatan'),centerTitle: true,),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notes[index].judul),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailCatatan(catatan: notes[index])),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final hasil = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => BuatCatatan()));
          if (hasil != null) {
            setState(() {
              notes.add(hasil);
            });
          }
        },
      ),
    );
  }
}
