import '/flutter_flow/flutter_flow_util.dart';
import 'guest_login_widget.dart' show GuestLoginWidget;
import 'package:flutter/material.dart';

class GuestLoginModel extends FlutterFlowModel<GuestLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
