import 'package:flutter/material.dart';

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

class PaginaInicio extends StatefulWidget {
  PaginaInicio({Key? key}) : super(key: key);
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //Widget con estado

class _PaginaInicioState extends State<PaginaInicio> {
  List<String> images = [
    "assets/images/diluc.png",
    "assets/images/fischl.png",
    "assets/images/hutao.png",
    "assets/images/zhongli.png",
    "assets/images/ayato.png",
    "assets/images/qiqi.png",
    "assets/images/klee.png",
    "assets/images/jean.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Usuarios de Morax"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 8,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
