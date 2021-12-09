import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:movie_app/components/wmensajes.dart';
import 'package:movie_app/controllers/messages_controller.dart';
import 'package:movie_app/controllers/my_user_controller.dart';
import 'package:movie_app/model/mensajes.dart';
import 'package:movie_app/theme/background/Background.dart';

class ListaMensajes extends StatefulWidget {
  ListaMensajes({Key? key}) : super(key: key);

  @override
  ListaMensajesState createState() => ListaMensajesState();
}

class ListaMensajesState extends State<ListaMensajes> {
  ScrollController _scrollController = ScrollController();
  TextEditingController _mensajeController = TextEditingController();

  final controluser = Get.put(MyUserController());
  final controlchat = Get.put(Controlchat());

  @override
  Widget build(BuildContext context) {
    print(controluser.getMyUser());
    WidgetsBinding.instance!.addPostFrameCallback((_) => _scrollHaciaAbajo());

    return BackgroundMain(
        child: Container(
            height: 400,
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(children: [
                  _getListaMensajes(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: TextField(
                                    keyboardType: TextInputType.text,
                                    controller: _mensajeController,
                                    onChanged: (text) => setState(() {}),
                                    onSubmitted: (input) {
                                      _enviarMensaje();
                                    },
                                    decoration: const InputDecoration(
                                        hintText: 'Escribe un mensaje')))),
                        IconButton(
                            icon: Icon(_puedoEnviarMensaje()
                                ? CupertinoIcons.arrow_right_circle_fill
                                : CupertinoIcons.arrow_right_circle),
                            onPressed: () {
                              _enviarMensaje();
                            })
                      ]),
                ]))));
  }

  void _enviarMensaje() {
    // if (_puedoEnviarMensaje()) {
    //   final mensaje = Mensaje(
    //       _mensajeController.text,
    //       DateTime.now(),
    //       controluser.userf,
    //       controluser.name,
    //       controluser.image,
    //       controluser.id);
    //   controlchat.guardarMensaje(mensaje);
    //   _mensajeController.clear();
    //   setState(() {});
    // }
  }

  bool _puedoEnviarMensaje() => _mensajeController.text.length > 0;

  Widget _getListaMensajes() {
    return Expanded(
        child: FirebaseAnimatedList(
      controller: _scrollController,
      query: controlchat.getMensajes(),
      itemBuilder: (context, snapshot, animation, index) {
        final json = snapshot.value as Map<dynamic, dynamic>;
        print('Id_unico:${snapshot.key}');
        String? key = snapshot.key;
        final mensaje = Mensaje.fromJson(json);
        return MensajeWidget(mensaje.texto, mensaje.fecha, key!, mensaje.email,
            mensaje.name, mensaje.photo, mensaje.uid);
      },
    ));
  }

  void _scrollHaciaAbajo() {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }
  }
}
