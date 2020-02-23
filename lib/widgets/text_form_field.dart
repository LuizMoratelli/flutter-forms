import 'package:flutter/material.dart' as m;
import 'package:forms/utils/validator.dart';
import 'package:forms/theme.dart';

class TextFormField extends m.StatelessWidget {
  final String initialValue;
  final m.InputDecoration decoration;
  final Validator validator;
  final m.TextEditingController controller;
  final m.TextInputType keyboardType;
  final m.TextStyle style;

  TextFormField({
    this.initialValue = '',
    this.decoration,
    this.validator,
    this.keyboardType,
    this.style,
  }) : controller = m.TextEditingController(text: initialValue);

  @override
  m.Widget build(m.BuildContext context) {
    final m.TextStyle style = m.TextStyle(
      fontSize: 14,
      color: m.Colors.black,
    );

    final m.TextStyle hintStyle = m.TextStyle(
      color: ThemeColors.lightGray,
      fontSize: 16,
    );

    final m.UnderlineInputBorder borderStyle = m.UnderlineInputBorder(
      borderSide: m.BorderSide(
        color: m.Theme.of(context).primaryColor,
        width: 2.0,
      ),
    );

    return m.TextFormField(
      decoration: decoration ??
          m.InputDecoration(
            hintStyle: hintStyle,
            enabledBorder: borderStyle,
            focusedBorder: borderStyle,
            hintText: '',
            labelText: '',
          ),
      validator: validator ?? (String value) => null,
      controller: controller ?? null,
      keyboardType: keyboardType ?? m.TextInputType.text,
      style: this.style ?? style,
    );
  }
}
