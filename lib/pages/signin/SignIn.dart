import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
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

  @override
  Widget build(BuildContext context) {
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
                  child:
                      Image.asset('assets/login_vector.png', fit: BoxFit.fill)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Form(
                    child:
                        KeyboardVisibilityBuilder(builder: (context, visible) {
                      print(visible);
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
                                    "Login",
                                    style: TextStyle(
                                        color: CinappColors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 36),
                                  ),
                                  Text(
                                    "Ingresa tus datos para continuar",
                                    style: TextStyle(
                                        color: CinappColors.gray1,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
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
                                ],
                              ),
                            ),
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
                                        fixedSize: Size(
                                            MediaQuery.of(context).size.width,
                                            50),
                                      ),
                                      onPressed: () {
                                        if (_formKey.currentState!.validate())
                                          _inicio(usuario.text, passwd.text);
                                      }),
                                  const SizedBox(height: 8),
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
                      );
                    }),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
