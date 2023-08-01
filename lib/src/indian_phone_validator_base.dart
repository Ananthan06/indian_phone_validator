
/// validator for indian phone numbers.
class IndianPhoneValidator {

  /// Returns true or false.
  bool isAValidPhoneNumber(String value) {
    // RegExp regex =  RegExp(r'^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$'); // mob ind
    // RegExp regex =  RegExp(r'^\d{5}([- ]*)\d{6}$'); //land
    RegExp regex =  RegExp(r'(^(\+91[\-\s]?)?[0]?(91)?[6789]\d{9}$)|^\d{5}[0]([- ]*)\d{6}$');
    if (!regex.hasMatch(value)) {
      return false;
    }
    else {
      return true;
    }
  }

}

