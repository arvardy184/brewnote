import 'package:brewnote/screens/daftar_catatan.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catatan Harian',
      theme: ThemeData(
       colorScheme: ColorScheme.dark()
      ),
      home: DaftarCatatan(),
    );
  }
}
