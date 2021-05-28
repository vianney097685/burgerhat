import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,

        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  'Burger King Hat',
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.red),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(2.0),
                    child: Stack(
                      children: <Widget>[
                        Align(
                            child: new Image(
                          width: 280.0,
                          height: 180.0,
                          image: new AssetImage('assets/images/burgerk.png'),
                        ) //image
                            ) //align
                      ], //<Widget>[]
                    ), //stack
                  ), //container
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Email", icon: Icon(Icons.email)),
                    //input decoration
                  ), //text field
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Password", icon: Icon(Icons.vpn_key)),
                    //input decoration
                  ), //text field
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new RaisedButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text(
                            "Aceptar",
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          onPressed: () {}),
                      new RaisedButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          child: Text(
                            "Cancelar",
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          onPressed: () {}),
                    ],
                  )
                ], //<Widget>[]
              ), //column
            ], //widget
          ), //colum
        ), //singlechild
      ) //container
          ), //safearea
    ); //Scaffold
  }
}
