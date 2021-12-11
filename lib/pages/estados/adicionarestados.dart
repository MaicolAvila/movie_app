import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/auth_controller.dart';
import 'package:movie_app/controllers/controllerfirestore.dart';
import 'package:movie_app/pages/estados/listarestados.dart';

class AgregarEstado extends StatefulWidget {
  @override
  _AgregarEstadoState createState() => _AgregarEstadoState();
}

class _AgregarEstadoState extends State<AgregarEstado> {
  TextEditingController controltitulo = TextEditingController();
  TextEditingController controldetalle = TextEditingController();
  ControllerFirestore controlestados = Get.find();
  Controllerauth controluser = Get.find();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar Mensajero"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              TextField(
                controller: controltitulo,
                decoration: InputDecoration(labelText: "Titulo"),
              ),
              TextField(
                controller: controldetalle,
                decoration: InputDecoration(labelText: "Descripcion"),
              ),
              ElevatedButton(
                child: Text("Adicioanar Estado"),
                onPressed: () {
                  var estados = <String, dynamic>{
                    'titulo': controltitulo.text,
                    'detalle': controldetalle.text,
                    'photo': controluser.photo,
                    'name': controluser.name,
                    'uid': controluser.uid,
                  };

                  controlestados.crearestado(estados);
                  Get.off(() => ListaMensajeros2(title: 'Listar'));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
