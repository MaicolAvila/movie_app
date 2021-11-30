import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class InputNuevaNotaWidget extends StatefulWidget {
  InputNuevaNotaWidget({Key? key}) : super(key: key);

  @override
  _InputNuevaNotaWidgetState createState() => _InputNuevaNotaWidgetState();
}

class _InputNuevaNotaWidgetState extends State<InputNuevaNotaWidget> {
  TextEditingController? emailAddressController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        controller: emailAddressController,
        obscureText: false,
        decoration: InputDecoration(
          labelText: 'Escribe aquí tu nota',
          labelStyle: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF95A1AC),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          hintText: 'Enter your email here...',
          hintStyle: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Roboto',
            color: FlutterFlowTheme.primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFDBE2E7),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFDBE2E7),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsetsDirectional.fromSTEB(10, 70, 0, 24),
        ),
        style: FlutterFlowTheme.bodyText1.override(
          fontFamily: 'Roboto',
          color: Color(0xFF2B343A),
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        textAlign: TextAlign.justify,
        validator: (val) {
          if (val!.isEmpty) {
            return 'Field is required';
          }

          return null;
        },
      ),
    );
  }
}
