import 'package:flutter/material.dart';

class ThirdPages extends StatefulWidget {
  @override
  _ThirdPagesState createState() => _ThirdPagesState();
}

const List<Color> orangeGradients = [
  Color(0xFFFF9844),
  Color(0xFFFE8853),
  Color(0xFFFD7267),
];
const List<Color> redGradients = [
  Color(0xFF7700FF),
  Color(0xFF8351D4),
  Color(0xFF764C8A),
];
const List<Color> blueGradients = [
  Color(0xFF0F13F8),
  Color(0xFF5570C7),
  Color(0xFF5E8EF7),
];

class _ThirdPagesState extends State<ThirdPages> {
  Widget build(BuildContext context) {
    return Material(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300, minWidth: 200),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90.0,
              ),
              Container(
                color: Colors.pink,
                height: 200,
                width: 350,
              ), //fin de contaimer
              SizedBox(
                height: 20.0,
              ),
              Container(
                  height: 200,
                  width: 250,
                  decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)), gradient: LinearGradient(colors: orangeGradients, begin: Alignment.topLeft, end: Alignment.bottomRight)),
                  child: Container(
                    padding: EdgeInsets.only(top: 35.0, bottom: 16),
                    child: Text(
                      'Bienvenido',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                  ) //fincontainer
                  ), //fin de contaimer
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)), gradient: LinearGradient(colors: blueGradients, begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: Text(
                  'Aceptar',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ), //fincontainer
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                  onTap: () {
                    print('Que padre, sigamos');
                  },
                  child: Container(padding: EdgeInsets.all(30), decoration: ShapeDecoration(shape: CircleBorder(), gradient: LinearGradient(colors: blueGradients, begin: Alignment.topLeft, end: Alignment.bottomRight)), child: ImageIcon(AssetImage("https://raw.githubusercontent.com/vianney097685/mis_imagenes/main/burger.png"), size: 70, color: Colors.blue)) //fincontainer
                  ),
            ], // fin de widget
          ), //fin de colum
        ), //fin de child single
      ), //fin de constrai
    ); //fin de material
  } // din de widget
} // fin de first page
