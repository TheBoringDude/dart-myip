import 'package:dart_myip/dart_myip.dart';
import 'package:test/test.dart';

void main() {
  group('A simple test', () {
    // setUp(() {
    //   // Additional setup goes here.
    // });

    test('Version', () {
      expect(VERSION, '0.0.1');
    });

    test('First Test', () async {
      final ip = await getMyIP();

      expect(ip.ip, isA<String>());
    });
  });
}
