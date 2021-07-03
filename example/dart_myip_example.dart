import 'package:dart_myip/dart_myip.dart';
import 'package:dart_myip/src/function.dart';

Future<void> main(List<String> args) async {
  final ip = await getMyIP();

  print(ip.ip);
}
