import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/email_create_controller.dart';
import 'package:movie_app/flutter_flow/flutter_flow_theme.dart';
import 'package:movie_app/flutter_flow/flutter_flow_widgets.dart';
import 'package:movie_app/pages/home/Home.dart';
import 'package:movie_app/pages/signin/SignIn.dart';
import 'package:movie_app/theme/colors/cinapp_colors.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController? emailAddressController1;
  TextEditingController? emailAddressController2;
  TextEditingController? passwordController;
  bool? passwordVisibility;
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailAddressController1 = TextEditingController();
    emailAddressController2 = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    final emailController = Get.put(EmailCreateController());

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
                child: Image.asset('assets/vector-registro.png',
                    fit: BoxFit.fill)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Form(
                  child: KeyboardVisibilityBuilder(
                    builder: (context, visible) {
                      return Container(
                        height: visible
                            ? MediaQuery.of(context).size.height * 0.8
                            : MediaQuery.of(context).size.height * 0.5,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Obx(
                              () => Visibility(
                                visible: emailController.isLoading.value,
                                child: const Center(
                                    child: CircularProgressIndicator()),
                              ),
                            ),
                            Obx(
                              () => Visibility(
                                visible:
                                    emailController.error.value?.isNotEmpty ==
                                        true,
                                child: Text(
                                  emailController.error.value ?? '',
                                  style: const TextStyle(
                                      color: Colors.red, fontSize: 24),
                                ),
                              ),
                            ),
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
                                  const SizedBox(height: 8),
                                  TextFormField(
                                    controller: emailController.emailController,
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
                                    validator: emailController.emailValidator,
                                  ),
                                  const SizedBox(height: 8),
                                  TextFormField(
                                    controller:
                                        emailController.passwordController,
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
                                    validator:
                                        emailController.passwordValidator,
                                  ),
                                  const SizedBox(height: 8),
                                  TextFormField(
                                    controller: emailController
                                        .repeatPasswordController,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      labelText: 'Confirm Password',
                                      labelStyle:
                                          TextStyle(color: CinappColors.white),
                                      filled: true,
                                      fillColor: CinappColors.purple2,
                                    ),
                                    obscureText: true,
                                    validator:
                                        emailController.passwordValidator,
                                  ),
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
                                      if (_formKey.currentState?.validate() ==
                                          true) {
                                        Get.find<EmailCreateController>()
                                            .createUserWithEmailAndPassword();
                                      }
                                    },
                                  ),
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
