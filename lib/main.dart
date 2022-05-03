import 'package:flutter/material.dart';
import 'package:rivas/galeriausuarios.dart';

void main() {
  runApp(MoraxApp());
} //Funcion principal

class MoraxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Morax',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: PaginaInicio());
  } //Widgets
} //Clase MoraxApp widgets sin estado
