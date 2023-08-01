import 'package:indian_phone_validator/indian_phone_validator.dart';

void main() {
  String _number = '+919495330044';
  bool isNumberValid = IndianPhoneValidator().isAValidPhoneNumber(_number);
  print('Is number $_number valid ? : $isNumberValid');
}
