import 'package:flutter/material.dart';

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
          title: Text("Usuarios de Morax V2"),
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
