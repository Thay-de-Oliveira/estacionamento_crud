import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'components/menu.dart';
import 'views/home.dart';
import 'views/criar.dart';
import 'views/editar.dart';
import 'views/listar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home', //Rota inicial
      routes: {
        '/home': (context) => MyHomePage(),
        '/criar': (context) => CadastroVaga(),
        '/editar': (context) => EditarVaga(),
        //'/listar': (context) => ListarVaga(),
      },
    );
  }
}
