import 'package:formz/formz.dart';

enum EmailValidationError { invalid }

final class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure([super.value = '']) : super.pure();
  const Email.dirty([super.value = '']) : super.dirty();

  static final emailRegex = RegExp(r'^[a-zA-Z0-9.!#$%&*+\\\=?^_`{|}~-]{1,10}@(?:(?!.*--)[a-zA-Z0-9-]{1,10}(?<!-))(?:\.(?:[a-zA-Z0-9-]{2,10}))+$',);

  @override
  EmailValidationError? validator(String? value) {
    return value != null && value.length >= 6 && value.length <= 30 && emailRegex.hasMatch(value)
        ? null
        : EmailValidationError.invalid;
  }
}