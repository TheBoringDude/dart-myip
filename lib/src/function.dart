import 'package:dart_myip/dart_myip.dart';
import 'package:dart_myip/src/request.dart';

/// getMyIP handles the client connection to the API. It returns a ClientIP instance.
/// If you have configured your own server, you can pass a parameter to the function with [server] as String.
Future<ClientIP> getMyIP({String? server}) async {
  final r = await RequestHandler.handleRequest(altUrl: server);

  return ClientIP.fromJson(r);
}
