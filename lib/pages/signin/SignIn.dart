import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/email_signin_controller.dart';
import 'package:movie_app/controllers/home_signin_controller.dart';
import 'package:movie_app/flutter_flow/flutter_flow_theme.dart';
import 'package:movie_app/navigation/routes.dart';

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
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
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
      body: Form(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () => Visibility(
                    visible: signInController.isLoading.value,
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: signInController.error.value?.isNotEmpty == true,
                    child: Text(
                      signInController.error.value ?? '',
                      style: const TextStyle(color: Colors.red, fontSize: 24),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: signInController.emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: signInController.emptyValidator,
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: signInController.passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: signInController.emptyValidator,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: const Text('Login'),
                        onPressed: () {
                          signInController.signInWithEmailAndPassword();
                          if (_formKey.currentState?.validate() == true) {
                            print('si entento ingresar');
                          }
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                _LoginButton(
                  text: 'Sign in with Google',
                  imagePath: 'assets/icon_google.png',
                  color: Colors.white,
                  textColor: Colors.grey,
                  onTap: () => homeSignInController.signInWithGoogle(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: const Text('Registrarse'),
                        onPressed: () {
                          Get.toNamed(Routes.createAccount);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
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
