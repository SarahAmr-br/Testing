import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future test(BuildContext context) async {
  ApiCallResponse? apiResultewq;

  apiResultewq = await CallbackCall.call();

  if ((apiResultewq.succeeded ?? true)) {
    context.goNamed('EnableBiometric');
  }
}
