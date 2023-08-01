import 'package:indian_phone_validator/indian_phone_validator.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = IndianPhoneValidator();

    setUp(() {
      // Additional setup goes here.
    });

    test('10 digits', () {
      expect(awesome.isAValidPhoneNumber("9698677665"), isTrue);
    });

    test('9 digits', () {
      expect(awesome.isAValidPhoneNumber("998777777"), isFalse);
    });

    test('11 digits', () {
      expect(awesome.isAValidPhoneNumber("99877777007"), isFalse);
    });

    test('11 digits start with 0', () {
      expect(awesome.isAValidPhoneNumber("09987777700"), isTrue);
    });

    test('12 digits', () {
      expect(awesome.isAValidPhoneNumber("099877777009"), isFalse);
    });

    test('12 digits starts with 91', () {
      expect(awesome.isAValidPhoneNumber("919877777009"), isTrue);
    });

    test('13 digits starts with +91', () {
      expect(awesome.isAValidPhoneNumber("+919877777009"), isTrue);
    });

    test('13 digits', () {
      expect(awesome.isAValidPhoneNumber("9819877777009"), isFalse);
    });

    test('uae num', () {
      expect(awesome.isAValidPhoneNumber("+971525552222"), isFalse);
    });

    test('canada num', () {
      expect(awesome.isAValidPhoneNumber("+16475797676"), isFalse);
    });

  });
}
