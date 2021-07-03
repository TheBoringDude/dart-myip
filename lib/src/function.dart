import 'package:dart_myip/dart_myip.dart';
import 'package:dart_myip/src/request.dart';

/// getMyIP handles the client connection to the API. It returns a ClientIP instance.
Future<ClientIP> getMyIP() async {
  final r = await RequestHandler.handleRequest();

  return ClientIP.fromJson(r);
}
