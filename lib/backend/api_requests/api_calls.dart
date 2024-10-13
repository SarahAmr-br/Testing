import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AuthenticationCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
"api_key": "ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljSEp2Wm1sc1pWOXdheUk2TkRBNU9ETXNJbTVoYldVaU9pSnBibWwwYVdGc0luMC54RnFfLVFnV1B0RGh1N2ZjOE84REh0aVVnWGphRmdzS2Q4Q05XN0E5RUtlcFRGLU1EUWotVHRWODhtTF9nbGRaR2REWm5mZGdLQnlDN1hKNFdMOGRjdw=="}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Authentication',
      apiUrl: 'https://accept.paymob.com/api/auth/tokens',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authenticationToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class OrderIDCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? amount = '',
  }) async {
    final ffApiRequestBody = '''
{
  "auth_token": "$token",
  "amount_cents": "$amount",
  "delivery_needed": "false",
  "items": []
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OrderID',
      apiUrl: 'https://accept.paymob.com/api/ecommerce/orders',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? orderID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class PaymentKeyCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? orderID = '',
    String? amount = '',
  }) async {
    final ffApiRequestBody = '''
{
  "expiration": 3600,
  "auth_token": "$token",
  "order_id": "$orderID",
  "integration_id": "3857298",
  "amount_cents": "$amount",
  "currency": "EGP",
  "billing_data": {
    "apartment": "NA",
    "first_name": "Ammar",
    "last_name": "Sadek",
    "street": "NA",
    "building": "NA",
    "phone_number": "+96824480228",
    "country": "NA",
    "email": "AmmarSadek@gmail.com",
    "floor": "NA",
    "state": "NA",
"city":"NA"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PaymentKey',
      apiUrl: 'https://accept.paymob.com/api/acceptance/payment_keys',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? paymentToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class TestCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl: 'https://accept.paymobsolutions.com/api/acceptance/post_pay',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? response(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
