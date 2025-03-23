import '/components/baranggay_card/baranggay_card_widget.dart';
import '/components/navigation_bar/navigation_bar_widget.dart';
import '/components/top_nav_bar/top_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigationBar component.
  late NavigationBarModel navigationBarModel;
  // Model for topNavBar component.
  late TopNavBarModel topNavBarModel;
  // Models for baranggayCard dynamic component.
  late FlutterFlowDynamicModels<BaranggayCardModel> baranggayCardModels;

  @override
  void initState(BuildContext context) {
    navigationBarModel = createModel(context, () => NavigationBarModel());
    topNavBarModel = createModel(context, () => TopNavBarModel());
    baranggayCardModels = FlutterFlowDynamicModels(() => BaranggayCardModel());
  }

  @override
  void dispose() {
    navigationBarModel.dispose();
    topNavBarModel.dispose();
    baranggayCardModels.dispose();
  }
}
