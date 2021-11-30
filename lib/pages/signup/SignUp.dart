import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/email_create_controller.dart';
import 'package:movie_app/flutter_flow/flutter_flow_theme.dart';
import 'package:movie_app/flutter_flow/flutter_flow_widgets.dart';
import 'package:movie_app/pages/home/Home.dart';
import 'package:movie_app/pages/signin/SignIn.dart';

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
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: Form(
        key: _formKey,
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
                    visible: emailController.isLoading.value,
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: emailController.error.value?.isNotEmpty == true,
                    child: Text(
                      emailController.error.value ?? '',
                      style: const TextStyle(color: Colors.red, fontSize: 24),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: emailController.emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: emailController.emailValidator,
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: emailController.passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: emailController.passwordValidator,
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: emailController.repeatPasswordController,
                  decoration:
                      const InputDecoration(labelText: 'Repeat Password'),
                  validator: emailController.passwordValidator,
                ),
                Center(
                  child: ElevatedButton(
                    child: const Text('Create'),
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        Get.find<EmailCreateController>()
                            .createUserWithEmailAndPassword();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
