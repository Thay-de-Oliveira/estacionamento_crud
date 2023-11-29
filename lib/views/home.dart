import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/menu_inferior.dart';

//import 'components/menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Menu(context),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Bem-vindo(a) ao estacionamento online =D"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/imagens/estacionamento.png'),
          ],
        ),
      ),

      bottomNavigationBar: MenuInferior(),
    );
  }
}
