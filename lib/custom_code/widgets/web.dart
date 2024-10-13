// Automatic FlutterFlow imports
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Web extends StatefulWidget {
  const Web({
    super.key,
    this.width,
    this.height,
    required this.token,
    // required this.nav
  });

  final double? width;
  final double? height;
  final String token;
  // final Action nav;

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  InAppWebViewController? _webViewController;

  void startPayment() {
    _webViewController?.loadUrl(
      urlRequest: URLRequest(
          url: WebUri(
              'https://accept.paymob.com/api/acceptance/iframes/112063?payment_token=${widget.token}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InAppWebView(
      initialOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(javaScriptEnabled: true),
      ),
      onWebViewCreated: (controller) {
        _webViewController = controller;
        startPayment();
      },
      onLoadStop: (controller, url) {
        if (url != null &&
            url.queryParameters.containsKey('success') &&
            url.queryParameters['success'] == true) {
          // widget.nav;
        }
      },
    ));
  }
}
