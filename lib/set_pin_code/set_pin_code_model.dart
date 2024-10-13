import '/flutter_flow/flutter_flow_util.dart';
import 'set_pin_code_widget.dart' show SetPinCodeWidget;
import 'package:flutter/material.dart';

class SetPinCodeModel extends FlutterFlowModel<SetPinCodeWidget> {
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
