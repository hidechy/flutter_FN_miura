// ignore_for_file: public_member_api_docs
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import '../../environment.dart';

final Provider<HttpClient> httpClientProvider = Provider<HttpClient>(
  (ProviderRef<HttpClient> ref) => HttpClient(),
);

class HttpClient {
  HttpClient() {
    _client = Client();
  }

  late Client _client;

  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    final uri = Uri.https(
      Environment.apiEndPoint,
      '${Environment.apiBasePath}/$path',
      queryParameters,
    );

    final response = await _client.get(
      uri,
      headers: await _headers,
    );
    final bodyString = utf8.decode(response.bodyBytes);

    return jsonDecode(bodyString);
  }

  Future<dynamic> post({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    final uri = Uri.http(
      Environment.apiEndPoint,
      '${Environment.apiBasePath}/$path',
      queryParameters,
    );

    final response = await _client.post(
      uri,
      headers: await _headers,
      body: json.encode(body),
    );
    final bodyString = utf8.decode(response.bodyBytes);

    try {
      if (bodyString.isEmpty) {
        throw Exception();
      }
      return jsonDecode(bodyString);
    } on Exception catch (_) {
      throw Exception('jason parse error');
    }
  }

  Future<Map<String, String>> get _headers async => <String, String>{
        'content-type': 'application/json',
      };
}
