import 'package:validators/validators.dart' as validators;

class AppValidator {
  static const _messageEnterValue = "Please Enter Value";
  static const _messageCorrectEmail = "Incorrect Email";
  static const _messageCorrectPass = "Incorrect Password";

  //* Validate Email
  static String? isEmail(String? value) {
    final String? valueTrim = value?.trim();
    if (valueTrim?.isEmpty ?? true) {
      return _messageEnterValue;
    } else if (!validators.isEmail(valueTrim!)) {
      return _messageCorrectEmail;
    }
    return null;
  }

  //* Validate Password
  static String? isPass(String? value) {
    final String? valueTrim = value?.trim();
    if (valueTrim?.isEmpty ?? true) {
      return _messageEnterValue;
    } else if (!validators.isLength(valueTrim!, 6)) {
      return _messageCorrectPass;
    } else {}
    return null;
  }
}
