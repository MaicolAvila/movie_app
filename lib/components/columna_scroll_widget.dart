import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ColumnaScrollWidget extends StatefulWidget {
  ColumnaScrollWidget({Key? key}) : super(key: key);

  @override
  _ColumnaScrollWidgetState createState() => _ColumnaScrollWidgetState();
}

class _ColumnaScrollWidgetState extends State<ColumnaScrollWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
              child: Container(
                width: 250,
                height: 170,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x64000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Text(
                              '12-02-2021',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              'Festival de cine de Cali',
                              style: FlutterFlowTheme.title1.override(
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              'Hoy se inaugura el Festival de cine\nmás importante del sur occidente\ncolombiano.',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
              child: Container(
                width: 250,
                height: 170,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x64000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Text(
                              '12-02-2021',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              'Festival de cine de Cali',
                              style: FlutterFlowTheme.title1.override(
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              'Hoy se inaugura el Festival de cine\nmás importante del sur occidente\ncolombiano.',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
              child: Container(
                width: 250,
                height: 170,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x64000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Text(
                              '12-02-2021',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              'Festival de cine de Cali',
                              style: FlutterFlowTheme.title1.override(
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              'Hoy se inaugura el Festival de cine \nmás importante del sur occidente\ncolombiano.',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
