import 'package:brewnote/models/Catatan.dart';
import 'package:flutter/material.dart';

class DetailCatatan extends StatelessWidget {
  final Catatan catatan;

  DetailCatatan({required this.catatan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Catatan"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                catatan.judul,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
               const SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.05),
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Text(
                    catatan.isi,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
