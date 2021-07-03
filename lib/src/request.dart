import 'dart:convert';

import 'package:dart_myip/src/errors.dart';
import 'package:http/http.dart' as http;

class RequestHandler {
  static Future<Map<String, dynamic>> handleRequest() async {
    final response = await http.get(Uri.parse('https://my-ip.theboringdude.workers.dev/'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw RequestError('Failed request');
    }
  }
}
