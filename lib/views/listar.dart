import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/menu_inferior.dart';

//import '../components/menu_inferior.dart';
//
//Adicionar:
//import 'package:get/get.dart';
//import '../controllers/ParkingSpot.dart';
import 'editar.dart';

/*class ListarVaga extends StatefulWidget {
  const ListarVaga({super.key});

  @override
  State<ListarVaga> createState() => _ListarVagaState();
}

class _ListarVagaState extends State<ListarVaga> {
  var controller = ParkingSpotController.parkingSpotController;

  @override
  void initState() {
    super.initState();
    controller.listParkingSpot();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de vagas =D'),
        ),
        body: Obx(
          () => controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: controller.listParkingSpotObs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                          controller.listParkingSpotObs[index].licensePlateCar),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              Get.to(EditarVaga(
                                  objeto:
                                      controller.listParkingSpotObs[index]));
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () async {
                              var response = await controller.deleteParkingSpot(
                                  controller.listParkingSpotObs[index]);
                              if (response != false) {
                                Get.snackbar("Sucesso", "Deletado com sucesso");
                                await controller.listParkingSpot();
                              } else {
                                Get.snackbar("Erro", "Erro ao deletar");
                              }
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
        ));
  }
}*/
