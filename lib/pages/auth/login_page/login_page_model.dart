import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  // State field(s) for PassField widget.
  FocusNode? passFieldFocusNode;
  TextEditingController? passFieldTextController;
  late bool passFieldVisibility;
  String? Function(BuildContext, String?)? passFieldTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    passFieldVisibility = false;
  }

  @override
  void dispose() {
    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();

    passFieldFocusNode?.dispose();
    passFieldTextController?.dispose();
  }
}
