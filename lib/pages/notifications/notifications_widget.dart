import '/backend/backend.dart';
import '/components/baranggay_card/baranggay_card_widget.dart';
import '/components/navigation_bar/navigation_bar_widget.dart';
import '/components/top_nav_bar/top_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notifications_model.dart';
export 'notifications_model.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({super.key});

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  late NotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.navigationBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavigationBarWidget(
                      selectedNavigation: 'notifications',
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          child: wrapWithModel(
                            model: _model.topNavBarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: TopNavBarWidget(),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40.0, 0.0, 40.0, 0.0),
                                child: StreamBuilder<List<BarangayRecord>>(
                                  stream: queryBarangayRecord(),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<BarangayRecord>
                                        wrapBarangayRecordList = snapshot.data!;

                                    return Wrap(
                                      spacing: 50.0,
                                      runSpacing: 50.0,
                                      alignment: WrapAlignment.center,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: List.generate(
                                          wrapBarangayRecordList.length,
                                          (wrapIndex) {
                                        final wrapBarangayRecord =
                                            wrapBarangayRecordList[wrapIndex];
                                        return ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Container(
                                            width: 320.0,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 10.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(
                                                    10.0,
                                                    10.0,
                                                  ),
                                                  spreadRadius: 20.0,
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            child: wrapWithModel(
                                              model: _model.baranggayCardModels
                                                  .getModel(
                                                wrapBarangayRecord.reference.id,
                                                wrapIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: BaranggayCardWidget(
                                                key: Key(
                                                  'Keyq6f_${wrapBarangayRecord.reference.id}',
                                                ),
                                                brgImage:
                                                    wrapBarangayRecord.image,
                                                brgyName:
                                                    wrapBarangayRecord.barangay,
                                                brgyDescription:
                                                    wrapBarangayRecord
                                                        .barangayParagraph,
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
