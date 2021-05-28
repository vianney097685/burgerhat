import 'package:flutter/material.dart';
import 'package:arellano/pages/first_pages.dart';
import 'package:arellano/pages/second_pages.dart';
import 'package:arellano/pages/third_pages.dart';

void main() => runApp(MiburgerHatziryApp());

class MiburgerHatziryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'arellano',
      home: PaginaInicio(),
    ); // fin de Material App
  } // fin del Constructor
} // fin de MiburgerHatziryApp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} // fin de Clase PaginaInicio

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = FlutterLogo();
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPages());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPages());
        break;
    } // Switch
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded, size: 20.0), title: Text('Inicio')), //
          BottomNavigationBarItem(icon: Icon(Icons.format_align_center_rounded, size: 20.0), title: Text('Registrarse')), //
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded, size: 20.0), title: Text('Compras')), //
        ],
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.grey,
      ), // fin de bottomNavigationBar
    ); // fin del Scaffold
  } // fin del Constructor
} // fin de la Clase _PaginaInicioState
