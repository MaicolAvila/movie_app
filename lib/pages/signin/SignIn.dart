import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/email_signin_controller.dart';
import 'package:movie_app/controllers/home_signin_controller.dart';
import 'package:movie_app/navigation/routes.dart';
import 'package:movie_app/theme/colors/Cinapp_colors.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController? emailAddressController;
  TextEditingController? passwordController;
  bool? passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    final signInController = Get.put(EmailSignInController());
    final homeSignInController = Get.put(HomeSignInController());

    return Scaffold(
        key: scaffoldKey,
        body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: CinappColors.purple1),
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset('assets/login_vector.png',
                        fit: BoxFit.fill)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Form(
                      child: KeyboardVisibilityBuilder(
                          builder: (context, visible) {
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
                                      controller:
                                          signInController.emailController,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        labelText: 'Email',
                                        labelStyle: TextStyle(
                                            color: CinappColors.white),
                                        filled: true,
                                        fillColor: CinappColors.purple2,
                                      ),
                                      validator:
                                          signInController.emptyValidator,
                                    ),
                                    const SizedBox(height: 35),
                                    TextFormField(
                                      controller:
                                          signInController.passwordController,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        labelText: 'Password',
                                        labelStyle: TextStyle(
                                            color: CinappColors.white),
                                        filled: true,
                                        fillColor: CinappColors.purple2,
                                      ),
                                      obscureText: true,
                                      validator:
                                          signInController.emptyValidator,
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
                                        signInController
                                            .signInWithEmailAndPassword();
                                        if (_formKey.currentState?.validate() ==
                                            true) {
                                          print('si entento ingresar');
                                        }
                                      },
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                            Get.toNamed(Routes.createAccount);
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
            )));
  }
}

class _LoginButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback? onTap;
  final Color color;
  final Color textColor;

  const _LoginButton({
    Key? key,
    required this.text,
    required this.imagePath,
    this.onTap,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      elevation: 3,
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
