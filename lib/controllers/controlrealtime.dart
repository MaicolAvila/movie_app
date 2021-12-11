// ignore_for_file: deprecated_member_use

import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class ControllerRealtime extends GetxController {
  final databaseReference = FirebaseDatabase.instance.reference();

  void createData(String doc, String nombre, String apellido, String direccion,
      String telefono, String uid) {
    databaseReference.child("clientes").set({
      'nombre': nombre,
      'Apellido': apellido,
      'Direccion': direccion,
      'Telefono': telefono,
      'uid': uid
    });
  }

  void updateData(String doc, String nombre, String apellido, String direccion,
      String telefono, String uid) {
    databaseReference.child("clientes").child(doc).update({
      'nombre': nombre,
    });
  }
}
