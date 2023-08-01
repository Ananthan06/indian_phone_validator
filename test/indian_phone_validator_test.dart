import 'package:indian_phone_validator/indian_phone_validator.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = IndianPhoneValidator();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAValidPhoneNumber("9898777777"), isTrue);
    });
    test('First Test', () {
      expect(awesome.isAValidPhoneNumber("998777777"), isTrue);
    });
  });
}
