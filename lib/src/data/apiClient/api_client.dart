import 'dart:convert';

import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  ApiClient();

  static final _client = GetConnect();

  Future<Map<String, dynamic>> sendGetRequest({
    required String endpoint,
    Map<String, dynamic>? queryParams,
    Map? headers,
    Map<String, dynamic>? body,
  }) async {
    final baseUrl = Uri.parse(endpoint);
    final queryParameters = queryParams?.cast<String, dynamic>() ?? {};
    final contentType = 'application/json';
    //* Headers da requisicao
    final defaultHeaders = headers?.cast<String, String>() ?? {}
      ..addAll({
        'accept': 'application/json',
        'X-Parse-Application-Id': 'g1Oui3JqxnY4S1ykpQWHwEKGOe0dRYCPvPF4iykc',
        'X-Parse-REST-API-Key': 'rFBKU8tk0m5ZlKES2CGieOaoYz6TgKxVMv8jRIsN',
      });

    if (queryParams != null) {
      if (queryParams is int) {
        queryParameters['param'] = queryParams;
      } else {
        queryParameters.addAll(queryParams);
      }
    }

    final url = baseUrl.replace(queryParameters: queryParams);
    try {
      final response = await _client.get(
        url.toString(),
        decoder: (data) => json.decode(data as String),
        headers: defaultHeaders,
        contentType: contentType,
        query: queryParameters,
      );

      return response.body as Map<String, dynamic>;
    } catch (error) {
      // * Retorno de Map vazio para erro generalizado
      return {};
    }
  }
}
