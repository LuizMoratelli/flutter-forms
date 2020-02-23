import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Validator {
  static String Function(String) merge(List<Function> validators) {
    return (String value) {
      for (var validator in validators) {
        final result = validator(value);
        if (result != null) {
          return result;
        }
      }

      return null;
    };
  }

  static String nonEmpty(dynamic value) {
    final String message = 'Esse campo não pode estar vazio';

    if (value == null) {
      return message;
    }

    if (value is String && value.isEmpty) {
      return message;
    }

    return null;
  }

  static String email(String value) => EmailValidator.validate(value)
      ? null
      : 'Esse campo precisa conter um e-mail válido';
}
