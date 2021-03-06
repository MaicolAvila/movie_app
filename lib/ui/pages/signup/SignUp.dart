import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:movie_app/domain/controllers/auth_controller.dart';
import 'package:movie_app/domain/controllers/connectivity.dart';
import 'package:movie_app/ui/theme/colors/cinapp_colors.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usuario = TextEditingController();
  TextEditingController passwd = TextEditingController();
  TextEditingController confpasswd = TextEditingController();
  Controllerauth controluser = Get.find();

  final _formKey = GlobalKey<FormState>();

  late ConnectivityController connectivityController;

  @override
  void initState() {
    super.initState();
    connectivityController = Get.find<ConnectivityController>();
  }

  _signUp(theEmail, thePassword) async {
    print('_login $theEmail $thePassword');
    try {
      await controluser.registrarEmail(theEmail, thePassword);
    } catch (err) {
      print(err.toString());
      Get.snackbar(
        "Login",
        err.toString(),
        icon: Icon(Icons.person, color: Colors.red),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Controllerauth controluser = Get.find();

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: CinappColors.purple1),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset('assets/vector-registro.png',
                    fit: BoxFit.fill)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Form(
                  key: _formKey,
                  child: KeyboardVisibilityBuilder(
                    builder: (context, visible) {
                      return Container(
                        height: visible
                            ? MediaQuery.of(context).size.height * 0.5
                            : MediaQuery.of(context).size.height * 0.8,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Registrarse",
                                    style: TextStyle(
                                        color: CinappColors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 36),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  const SizedBox(height: 35),
                                  TextFormField(
                                    controller: usuario,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      labelText: 'Email',
                                      labelStyle:
                                          TextStyle(color: CinappColors.white),
                                      filled: true,
                                      fillColor: CinappColors.purple2,
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 35),
                                  TextFormField(
                                    controller: passwd,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      labelText: 'Password',
                                      labelStyle:
                                          TextStyle(color: CinappColors.white),
                                      filled: true,
                                      fillColor: CinappColors.purple2,
                                    ),
                                    obscureText: true,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 35),
                                  // TextFormField(
                                  //     controller: confpasswd,
                                  //     style: TextStyle(color: Colors.white),
                                  //     decoration: InputDecoration(
                                  //       border: OutlineInputBorder(
                                  //         borderRadius:
                                  //             BorderRadius.circular(20),
                                  //       ),
                                  //       labelText: 'Confirm Password',
                                  //       labelStyle: TextStyle(
                                  //           color: CinappColors.white),
                                  //       filled: true,
                                  //       fillColor: CinappColors.purple2,
                                  //     ),
                                  //     obscureText: true,
                                  //     validator: (value) {
                                  //       if (value == null || value.isEmpty) {
                                  //         return 'Please enter some text';
                                  //       } else if (passwd !=confpasswd) {
                                  //         return 'Passwords do not match';
                                  //       }
                                  //     }),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  ElevatedButton(
                                      child: const Text(
                                        'Registrar',
                                        style: TextStyle(
                                            color: CinappColors.purple1,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: CinappColors.sky1,
                                        fixedSize: Size(
                                            MediaQuery.of(context).size.width,
                                            50),
                                      ),
                                      onPressed: () {
                                        if (_formKey.currentState!
                                            .validate()) if (connectivityController.connected) {
                                          _signUp(usuario.text, passwd.text);
                                        } else {
                                          Get.snackbar(
                                            "Red",
                                            'No hay Conexion de Red',
                                            icon: Icon(Icons.wifi_off,
                                                color: Colors.blue),
                                            snackPosition: SnackPosition.BOTTOM,
                                          );
                                        }
                                      }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
