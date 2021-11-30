import '../chat_box/chat_box_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class EstadosUsuariosWidget extends StatefulWidget {
  EstadosUsuariosWidget({Key? key}) : super(key: key);

  @override
  _EstadosUsuariosWidgetState createState() => _EstadosUsuariosWidgetState();
}

class _EstadosUsuariosWidgetState extends State<EstadosUsuariosWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.1, -0.5),
                  child: Text(
                    'Carlos Gómez',
                    style: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Montserrat',
                      color: Color(0xFF15212B),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(2.64, 0.55),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      '¿Alguien en Cali para ir \na ver Avengers?',
                      style: FlutterFlowTheme.bodyText2.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xFF8B97A2),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(85, 0, 0, 0),
            // child: FlutterFlowIconButton(
            //   borderColor: Colors.transparent,
            //   borderRadius: 30,
            //   borderWidth: 1,
            //   buttonSize: 60,
            //   icon: Icon(
            //     Icons.chat_rounded,
            //     color: FlutterFlowTheme.secondaryColor,
            //     size: 30,
            //   ),
            //   onPressed: () async {
            //     await Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => ChatBoxWidget(),
            //       ),
            //     );
            //   },
            // ),
          )
        ],
      ),
    );
  }
}
