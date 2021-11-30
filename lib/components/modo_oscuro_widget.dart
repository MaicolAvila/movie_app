import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class ModoOscuroWidget extends StatefulWidget {
  ModoOscuroWidget({Key? key}) : super(key: key);

  @override
  _ModoOscuroWidgetState createState() => _ModoOscuroWidgetState();
}

class _ModoOscuroWidgetState extends State<ModoOscuroWidget> {
  bool? switchListTileValue;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: switchListTileValue ??= false,
      onChanged: (newValue) => setState(() => switchListTileValue = newValue),
      title: Text(
        'Activar',
        style: FlutterFlowTheme.title3.override(
          fontFamily: 'Montserrat',
          fontSize: 15,
        ),
      ),
      subtitle: Text(
        'Modo oscuro',
        style: FlutterFlowTheme.bodyText1.override(
          fontFamily: 'Roboto',
          fontSize: 10,
        ),
      ),
      tileColor: Color(0xFFF5F5F5),
      dense: false,
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }
}
