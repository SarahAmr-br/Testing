// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// import '/actions/actions.dart' as action_blocks;

import 'package:flutter_paymob/flutter_paymob.dart';

Future paymobInitialization() async {
  FlutterPaymob.instance.initialize(
      apiKey:
          "ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljSEp2Wm1sc1pWOXdheUk2TkRBNU9ETXNJbTVoYldVaU9pSnBibWwwYVdGc0luMC54RnFfLVFnV1B0RGh1N2ZjOE84REh0aVVnWGphRmdzS2Q4Q05XN0E5RUtlcFRGLU1EUWotVHRWODhtTF9nbGRaR2REWm5mZGdLQnlDN1hKNFdMOGRjdw==", //  // from dashboard Select Settings -> Account Info -> API Key
      integrationID:
          4237280, // // from dashboard Select Developers -> Payment Integrations -> Online Card ID
      walletIntegrationId:
          4237280, // // from dashboard Select Developers -> Payment Integrations -> Online wallet
      iFrameID: 112064); // from paymob Select Developers -> iframes
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
