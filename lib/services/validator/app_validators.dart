import 'package:easy_localization/easy_localization.dart';
import 'package:psut_portal/language/generated/key_lang.dart';
import 'package:validators/validators.dart' as validators;

class AppValidator {
  static final _messageEnterValue = KeyLang.enterValue.tr();
  static final _messageCorrectEmail = KeyLang.errorEmail.tr();
  static final _messageCorrectPass = KeyLang.errorPass.tr();
  static final _messageCorrectCPass = KeyLang.errorConfirmPass.tr();

  //* Validate Email
  static String? isEmail(String? value) {
    final String? valueTrim = value?.trim();
    if (valueTrim?.isEmpty ?? true) {
      return _messageEnterValue;
    } else if (!validators.isEmail(valueTrim!)) {
      return _messageCorrectEmail;
    }
  }

  //* Validate Password
  static String? isPass(String? value) {
    final String? valueTrim = value?.trim();
    if (valueTrim?.isEmpty ?? true) {
      return _messageEnterValue;
    } else if (!validators.isLength(valueTrim!, 6)) {
      return _messageCorrectPass;
    } else {}
  }

  //* Equal Pass
  static String? isEqualPass(String? value, String pass) {
    final String? valueTrim = value?.trim();
    if (valueTrim?.isEmpty ?? true) {
      return _messageEnterValue;
    } else if (!validators.equals(valueTrim, pass.trim())) {
      return _messageCorrectCPass;
    } else {}
  }
}
