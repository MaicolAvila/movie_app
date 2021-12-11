import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/auth_controller.dart';
import 'package:movie_app/controllers/controllerfirestore.dart';
import 'package:movie_app/pages/estados/adicionarestados.dart';
import 'package:movie_app/pages/estados/editarestados.dart';

class ListaMensajeros2 extends StatefulWidget {
  ListaMensajeros2({required this.title});
  final String title;

  @override
  _ListaMensajeros2State createState() => _ListaMensajeros2State();
}

class _ListaMensajeros2State extends State<ListaMensajeros2> {
  ControllerFirestore controlp = Get.find();
  Controllerauth controluser = Get.find();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estados'),
        actions: [
          IconButton(
              tooltip: 'Adicionar Estados',
              icon: Icon(Icons.add),
              onPressed: () {
                //  Get.to(() => AgregarEstado());
              })
        ],
      ),

      body: getInfo(context, controlp.readItems(), controluser.uid),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AgregarEstado());
        },
        tooltip: 'Refrescar',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

@override
Widget getInfo(BuildContext context, Stream<QuerySnapshot> ct, String uid) {
  return StreamBuilder(
    stream: ct,
    /*FirebaseFirestore.instance
        .collection('clientes')
        .snapshots(),*/ //En esta línea colocamos el el objeto Future que estará esperando una respuesta
    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      print(snapshot.connectionState);
      switch (snapshot.connectionState) {

        //En este case estamos a la espera de la respuesta, mientras tanto mostraremos el loader
        case ConnectionState.waiting:
          return Center(child: CircularProgressIndicator());

        case ConnectionState.active:
          if (snapshot.hasError) return Text('Error: ${snapshot.error}');
          // print(snapshot.data);
          return snapshot.data != null
              ? Vistamensajeros(estados: snapshot.data!.docs, uid: uid)
              : Text('Sin Datos');

        /*
             Text(
              snapshot.data != null ?'ID: ${snapshot.data['id']}\nTitle: ${snapshot.data['title']}' : 'Vuelve a intentar', 
              style: TextStyle(color: Colors.black, fontSize: 20),);
            */

        default:
          return Text('Presiona el boton para recargar');
      }
    },
  );
}

class Vistamensajeros extends StatelessWidget {
  final List estados;
  final String uid;
  const Vistamensajeros({required this.estados, required this.uid});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: estados.length == 0 ? 0 : estados.length,
        itemBuilder: (context, posicion) {
          print(estados[posicion].id);
          return Card(
            elevation: 2,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 4.0, bottom: 16.0, left: 8.0, right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            NetworkImage(estados[posicion]['photo']),
                      ),
                      const SizedBox(
                        width: 14.0,
                      ),
                      Expanded(
                        child: Text(
                          estados[posicion]['titulo'],
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      (uid == estados[posicion]['uid'])
                          ? IconButton(
                              onPressed: () {
                                Get.to(() => ModificarEstado(
                                      estado: estados,
                                      pos: posicion,
                                      iddoc: estados[posicion].id,
                                    ));
                              },
                              icon: Icon(Icons.edit))
                          : Text('NO'),
                      SizedBox(
                        width: 5.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(estados[posicion]['detalle']),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(estados[posicion]['name']),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
