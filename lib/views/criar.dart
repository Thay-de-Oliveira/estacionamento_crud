import 'package:flutter/material.dart';

import '../components/menu_inferior.dart';

//import '../components/menu_inferior.dart';
//
//Adicionar:
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//mport 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';
//
//import '../components/Header.dart';
//import '../components/Menu.dart';
//import '../controllers/ParkingSpot.dart';
//import '../models/ParkingSpot.dart';

class CadastroVaga extends StatefulWidget {
  @override
  _CadastroVagaState createState() => _CadastroVagaState();
}

InputDecoration _customInputDecoration(String labelText) {
  return InputDecoration(
    labelText: labelText,
    labelStyle: TextStyle(fontSize: 16), //Tamanho da fonte dos campos
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0), //Borda arredondada
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey), //Cor da borda quando inativo
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide:
          BorderSide(color: Color(0xff761290)), //Cor da borda quando ativo
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
}

class _CadastroVagaState extends State<CadastroVaga> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    final _parkingSpotNumberController = TextEditingController();
    final _brandCarController = TextEditingController();
    final _modelCarController = TextEditingController();
    final _plateCarController = TextEditingController();

    //var controller = ParkingSpotController.parkingSpotController;
    //
    /*void handleSubmit() async {
      ParkingSpotModel parkingSpot = ParkingSpotModel(
          "",
          _parkingSpotNumberController.text,
          _brandCarController.text,
          _modelCarController.text,
          _plateCarController.text,
          "",
      );

    /var response =  await controller.post(parkingSpot);
    }*/

    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro =D'),
      ),
      body: CustomScrollView(
        //Permite rolagem da página
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 10),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //Campo "Nome do responsável no local"
                            TextFormField(
                              decoration: _customInputDecoration(
                                  'Número da vaga de estacionamento:'),
                              controller: _parkingSpotNumberController,
                            ),

                            SizedBox(height: 30),

                            TextFormField(
                              decoration:
                                  _customInputDecoration('Marca do veículo:'),
                              controller: _brandCarController,
                            ),

                            SizedBox(height: 30),

                            TextFormField(
                              decoration:
                                  _customInputDecoration('Modelo do veículo:'),
                              controller: _modelCarController,
                            ),

                            SizedBox(height: 30),

                            TextFormField(
                              decoration:
                                  _customInputDecoration('Placa do veículo:'),
                              controller: _plateCarController,
                            ),

                            SizedBox(height: 30),

                            /*ElevatedButton(
                          child: Text('Submit'),
                          onPressed: handleSubmit,
                        )*/
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MenuInferior(),
    );
  }
}
