import 'package:flutter/material.dart';
import 'package:movie_app/components/columna_scroll_widget.dart';
import 'package:movie_app/components/estados_usuarios_widget.dart';
import 'package:movie_app/components/servicio_pelicul_widget.dart';
import 'package:movie_app/flutter_flow/flutter_flow_theme.dart';
import 'package:movie_app/flutter_flow/flutter_flow_widgets.dart';
import 'package:movie_app/nueva_nota/nueva_nota_widget.dart';
import 'package:movie_app/nuevo_estado/nuevo_estado_widget.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NuevoEstadoWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.primaryColor,
        elevation: 9,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Column(
          children: [
            TabBar(
              labelColor: FlutterFlowTheme.primaryColor,
              labelStyle: FlutterFlowTheme.bodyText1,
              indicatorColor: Color(0xFF6E6565),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.mail_outlined,
                    color: FlutterFlowTheme.primaryColor,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.movie_outlined,
                    color: FlutterFlowTheme.primaryColor,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: FlutterFlowTheme.primaryColor,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.people_outline,
                    color: FlutterFlowTheme.primaryColor,
                  ),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                          child: EstadosUsuariosWidget(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                          child: EstadosUsuariosWidget(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                          child: EstadosUsuariosWidget(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                          child: EstadosUsuariosWidget(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                          child: EstadosUsuariosWidget(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                          child: EstadosUsuariosWidget(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                          child: EstadosUsuariosWidget(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                          child: EstadosUsuariosWidget(),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(18, 0, 0, 0),
                              child: Text(
                                'Notas',
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: ColumnaScrollWidget(),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(18, 20, 0, 0),
                              child: Text(
                                'IMDB',
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: ServicioPeliculWidget(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // FFButtonWidget(
                              //   onPressed: () async {
                              //     setState(() => _loadingButton1 = true);
                              //     try {
                              //       await Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //           builder: (context) => NuevaNotaWidget(),
                              //         ),
                              //       );
                              //     } finally {
                              //       setState(() => _loadingButton1 = false);
                              //     }
                              //   },
                              //   text: 'Nueva Nota',
                              //   options: FFButtonOptions(
                              //     width: 130,
                              //     height: 40,
                              //     color: FlutterFlowTheme.secondaryColor,
                              //     textStyle:
                              //         FlutterFlowTheme.subtitle2.override(
                              //       fontFamily: 'Montserrat',
                              //       color: Colors.white,
                              //     ),
                              //     borderSide: BorderSide(
                              //       color: Colors.transparent,
                              //       width: 1,
                              //     ),
                              //     borderRadius: 8,
                              //   ),
                              //   loading: _loadingButton1,
                              // )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'Lorem ipsum dolor...',
                                        style: FlutterFlowTheme.title3,
                                      ),
                                      subtitle: Text(
                                        'Lorem ipsum dolor...',
                                        style: FlutterFlowTheme.subtitle2,
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFF303030),
                                        size: 20,
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      dense: false,
                                    ),
                                    ListTile(
                                      title: Text(
                                        'Lorem ipsum dolor...',
                                        style: FlutterFlowTheme.title3,
                                      ),
                                      subtitle: Text(
                                        'Lorem ipsum dolor...',
                                        style: FlutterFlowTheme.subtitle2,
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFF303030),
                                        size: 20,
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      dense: false,
                                    ),
                                    ListTile(
                                      title: Text(
                                        'Lorem ipsum dolor...',
                                        style: FlutterFlowTheme.title3,
                                      ),
                                      subtitle: Text(
                                        'Lorem ipsum dolor...',
                                        style: FlutterFlowTheme.subtitle2,
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFF303030),
                                        size: 20,
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      dense: false,
                                    ),
                                    ListTile(
                                      title: Text(
                                        'Lorem ipsum dolor...',
                                        style: FlutterFlowTheme.title3,
                                      ),
                                      subtitle: Text(
                                        'Lorem ipsum dolor...',
                                        style: FlutterFlowTheme.subtitle2,
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFF303030),
                                        size: 20,
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      dense: false,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // FFButtonWidget(
                              //   onPressed: () {
                              //     print('Button pressed ...');
                              //   },
                              //   text: 'Agregar',
                              //   options: FFButtonOptions(
                              //     width: 130,
                              //     height: 40,
                              //     color: FlutterFlowTheme.secondaryColor,
                              //     textStyle:
                              //         FlutterFlowTheme.subtitle2.override(
                              //       fontFamily: 'Montserrat',
                              //       color: Colors.white,
                              //     ),
                              //     borderSide: BorderSide(
                              //       color: Colors.transparent,
                              //       width: 1,
                              //     ),
                              //     borderRadius: 8,
                              //   ),
                              //   loading: _loadingButton2,
                              // )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.person_rounded,
                          color: FlutterFlowTheme.primaryColor,
                        ),
                        title: Text(
                          'Marta Villegas',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          '¿Cuál es tu película de terror favorita?',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person_rounded,
                          color: FlutterFlowTheme.primaryColor,
                        ),
                        title: Text(
                          'Marta Villegas',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          '¿Cuál es tu película de terror favorita?',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person_rounded,
                          color: FlutterFlowTheme.primaryColor,
                        ),
                        title: Text(
                          'Marta Villegas',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          '¿Cuál es tu película de terror favorita?',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person_rounded,
                          color: FlutterFlowTheme.primaryColor,
                        ),
                        title: Text(
                          'Marta Villegas',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          '¿Cuál es tu película de terror favorita?',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person_rounded,
                          color: FlutterFlowTheme.primaryColor,
                        ),
                        title: Text(
                          'Marta Villegas',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          '¿Cuál es tu película de terror favorita?',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person_rounded,
                          color: FlutterFlowTheme.primaryColor,
                        ),
                        title: Text(
                          'Marta Villegas',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          '¿Cuál es tu película de terror favorita?',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person_rounded,
                          color: FlutterFlowTheme.primaryColor,
                        ),
                        title: Text(
                          'Marta Villegas',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          '¿Cuál es tu película de terror favorita?',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person_rounded,
                          color: FlutterFlowTheme.primaryColor,
                        ),
                        title: Text(
                          'Marta Villegas',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          '¿Cuál es tu película de terror favorita?',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
