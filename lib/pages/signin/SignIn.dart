import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/auth_controller.dart';
import 'package:movie_app/pages/home/Home.dart';
import 'package:movie_app/theme/colors/cinapp_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usuario = TextEditingController();
  TextEditingController passwd = TextEditingController();
  Controllerauth controluser = Get.find();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    autoLogIn();
  }

  void autoLogIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? _email = prefs.getString('email');
    final String? _passw = prefs.getString('clave');

    if (_email != null) {
      setState(() {
        usuario.text = _email;
        passwd.text = _passw!;
        _inicio(usuario.text, passwd.text);
        _google();
      });
      return;
    }
  }

  _inicio(theEmail, thePassword) async {
    print('_login $theEmail $thePassword');
    try {
      await controluser.ingresarEmail(theEmail, thePassword);
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

  _google() async {
    try {
      await controluser.ingresarGoogle();
      Get.to(() => Home());
      //Get.to(() => ListaMensajes());
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
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          decoration: BoxDecoration(color: CinappColors.purple1),
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child:
                      Image.asset('assets/login_vector.png', fit: BoxFit.fill)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 80.0,
                    backgroundImage: NetworkImage(
                        'https://us.123rf.com/450wm/rashadashurov/rashadashurov1911/rashadashurov191101490/133749415-concepto-de-cuenta-icono-de-l%C3%ADnea-azul-elemento-delgado-simple-sobre-fondo-oscuro-dise%C3%B1o-de-s%C3%ADmbolo-.jpg?ver=6'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: usuario,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: CinappColors.white),
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
                      labelStyle: TextStyle(color: CinappColors.white),
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
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  color: CinappColors.purple1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: CinappColors.sky1,
                              fixedSize:
                                  Size(MediaQuery.of(context).size.width, 50),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate())
                                _inicio(usuario.text, passwd.text);
                            }),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'No tienes cuenta ?',
                              style: TextStyle(
                                  color: CinappColors.gray1,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Text("Registrar",
                                  style: TextStyle(
                                      color: CinappColors.sky1,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800)),
                              onTap: () {
                                Get.toNamed("/createAccount");
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _google();
        },
        child: FaIcon(
          FontAwesomeIcons.google,
          color: Colors.white,
        ),
      ),
    );
  }
}
