import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class NuevaNotWidget extends StatefulWidget {
  NuevaNotWidget({Key? key}) : super(key: key);

  @override
  _NuevaNotWidgetState createState() => _NuevaNotWidgetState();
}

class _NuevaNotWidgetState extends State<NuevaNotWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  bool _loadingButton = false;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    '¿Qué tienes en mente?',
                    style: FlutterFlowTheme.title1.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF090F13),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Título',
                      hintStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Roboto',
                        color: Color(0x74303030),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDBE2E7),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDBE2E7),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Roboto',
                      color: Color(0x74303030),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: textController2,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Escribe tu reseña',
                      hintStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Roboto',
                        color: Color(0x74303030),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDBE2E7),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDBE2E7),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(9, 0, 0, 90),
                    ),
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Roboto',
                      color: Color(0x74303030),
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 2,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Color(0xFFDBE2E7),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // FFButtonWidget(
                //   onPressed: () {
                //     print('Button pressed ...');
                //   },
                //   text: 'Publicar',
                //   options: FFButtonOptions(
                //     width: 130,
                //     height: 40,
                //     color: FlutterFlowTheme.secondaryColor,
                //     textStyle: FlutterFlowTheme.subtitle2.override(
                //       fontFamily: 'Montserrat',
                //       color: Colors.white,
                //     ),
                //     borderSide: BorderSide(
                //       color: Colors.transparent,
                //       width: 1,
                //     ),
                //     borderRadius: 12,
                //   ),
                //   loading: _loadingButton,
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
