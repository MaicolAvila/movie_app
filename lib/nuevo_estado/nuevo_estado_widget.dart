import '../components/input_nuevo_estado_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class NuevoEstadoWidget extends StatefulWidget {
  NuevoEstadoWidget({Key? key}) : super(key: key);

  @override
  _NuevoEstadoWidgetState createState() => _NuevoEstadoWidgetState();
}

class _NuevoEstadoWidgetState extends State<NuevoEstadoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [InputNuevoEstadoWidget()],
          ),
        ),
      ),
    );
  }
}
