import 'package:formz/formz.dart';

enum PasswordValidationError { invalid }

final class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure([super.value = '']) : super.pure();
  const Password.dirty([super.value = '']) : super.dirty();

  static final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)[A-Za-z\d]{6,10}$');

  @override
  PasswordValidationError? validator(String? value) {
    return passwordRegex.hasMatch(value ?? "")
        ? null
        : PasswordValidationError.invalid;
  }
}