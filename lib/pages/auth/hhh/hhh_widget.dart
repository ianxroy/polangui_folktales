import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'hhh_model.dart';
export 'hhh_model.dart';

class HhhWidget extends StatefulWidget {
  const HhhWidget({super.key});

  @override
  State<HhhWidget> createState() => _HhhWidgetState();
}

class _HhhWidgetState extends State<HhhWidget> {
  late HhhModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HhhModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Opacity(
                opacity: 0.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Cover.jpg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsetsDirectional.fromSTEB(220.0, 10.0, 220.0, 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'POLANGUI',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).displayMedium.override(
                                  fontFamily: 'Antic Didone',
                                  color: Colors.white,
                                  fontSize: 140.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w100,
                                ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Explore the folktales of Polangui, Albay',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            shadows: [
                              Shadow(
                                color: FlutterFlowTheme.of(context).secondary,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 2.0,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
