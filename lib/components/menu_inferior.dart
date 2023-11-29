import 'package:flutter/material.dart';

class MenuInferior extends StatefulWidget {
  @override
  _MenuInferiorState createState() => _MenuInferiorState();
}

class _MenuInferiorState extends State<MenuInferior> {
  String telaAtual = 'home';
  Color corAtiva = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 71,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                telaAtual = 'home';
              });
              Navigator.of(context).pushNamed('/home');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 8),
                Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xff999999),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.30,
                  ),
                ),
              ],
            ),
          ),

          // INÍCIO
          InkWell(
            onTap: () {
              setState(() {
                telaAtual = 'criar';
              });
              Navigator.of(context).pushNamed('/criar');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 8),
                Text(
                  'Criar',
                  style: TextStyle(
                    color: Color(0xff4d4d4d),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
