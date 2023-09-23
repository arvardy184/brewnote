import 'package:brewnote/models/Catatan.dart';
import 'package:flutter/material.dart';


class BuatCatatan extends StatefulWidget {
  @override
  _BuatCatatanState createState() => _BuatCatatanState();
}

class _BuatCatatanState extends State<BuatCatatan> {
  final judulController = TextEditingController();
  final isiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buat Catatan',),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: judulController,
              decoration: InputDecoration(labelText: 'Judul'),
            ),
            SizedBox(height: 16),
            Expanded(
              child: TextField(
                controller: isiController,
                maxLines: 10,
            
                decoration: InputDecoration(labelText: 'Isi Catatan',hintText: 'Maksimal 10 baris'),
                
              ),
            ),
            ElevatedButton(
  child: Text('Simpan'),
  onPressed: () {
    if (judulController.text.isNotEmpty && isiController.text.isNotEmpty) {
      Navigator.pop(context, Catatan(judul: judulController.text, isi: isiController.text));
    } else if(judulController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Judul harus diisi')));
    }
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black, 
    foregroundColor: Colors.white, 
    // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16), 
    ),
    elevation: 5, 
  ),
),

          ],
        ),
      ),
    );
  }
}
