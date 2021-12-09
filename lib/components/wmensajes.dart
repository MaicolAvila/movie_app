import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/controllers/messages_controller.dart';
import 'package:movie_app/controllers/my_user_controller.dart';

class MensajeWidget extends StatelessWidget {
  final String texto;
  final DateTime fecha;
  final String idmensaje;
  final String email;
  final String name;
  final String photo;
  final String uid;

  MensajeWidget(this.texto, this.fecha, this.idmensaje, this.email, this.name,
      this.photo, this.uid);

  @override
  Widget build(BuildContext context) {
    Controlchat controlchat = Get.find();
    MyUserController controluser = Get.find();
    return Padding(
      padding: const EdgeInsets.only(left: 1, top: 5, right: 1, bottom: 2),
      child: Column(children: [
        ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(photo),
            backgroundColor: Colors.white,
          ),
          title: Text(name),
          subtitle: Text(email),
        ),
        Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey[350]!,
                  blurRadius: 2.0,
                  offset: Offset(0, 1.0))
            ], borderRadius: BorderRadius.circular(50.0), color: Colors.white),
            child: MaterialButton(
                disabledTextColor: Colors.black87,
                padding: EdgeInsets.only(left: 18),
                onPressed: null,
                onLongPress: () {
                  // if (controluser.id == id) {
                  //   controlchat.deleteMensaje(idmensaje);
                  // }
                },
                child: Wrap(
                  children: <Widget>[
                    Container(
                        child: Row(
                      children: [
                        Text(texto),
                      ],
                    ))
                  ],
                ))),
        Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Align(
                alignment: Alignment.topRight,
                child: Text(
                    DateFormat('kk:mma, dd-MM-yyyyy').format(fecha).toString(),
                    style: TextStyle(color: Colors.grey))))
      ]),
    );
  }
}
