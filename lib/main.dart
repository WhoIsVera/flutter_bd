import 'package:fluter_bd/pages/guardar.dart';
import 'package:flutter/material.dart';
import 'package:fluter_bd/pages/listado.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: listado.ROUTE,
      routes: {
        listado.ROUTE : (_) => listado(),
        guardar.ROUTE : (_) => guardar()
      }
    );
  }
}