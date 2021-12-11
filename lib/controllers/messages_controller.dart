// ignore_for_file: deprecated_member_use

import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:movie_app/model/mensajes.dart';

class Controlchat extends GetxController {
  final DatabaseReference _mensajesRef =
      FirebaseDatabase.instance.reference().child('mensajes');

  void guardarMensaje(Mensaje mensaje) {
    _mensajesRef.push().set(mensaje.toJson());
  }

  void deleteMensaje(String idmensaje) {
    _mensajesRef.child(idmensaje).remove();
  }

  Query getMensajes() => _mensajesRef;
}
