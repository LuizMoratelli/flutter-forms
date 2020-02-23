import 'package:flutter/material.dart' as m;
import 'package:forms/utils/validator.dart';
import 'package:forms/theme.dart';

class TextFormField extends m.StatelessWidget {
  final String initialValue, hintText, labelText;
  final m.InputDecoration decoration;
  final validator;
  final m.TextEditingController controller;
  final m.TextInputType keyboardType;
  final m.TextStyle style;

  TextFormField({
    this.initialValue = '',
    this.decoration,
    this.validator,
    this.keyboardType,
    this.style,
    this.hintText,
    this.labelText,
  }) : controller = m.TextEditingController(text: initialValue);

  @override
  m.Widget build(m.BuildContext context) {
    final m.TextStyle style = m.TextStyle(
      fontSize: 14,
      color: m.Colors.black,
    );

    final m.TextStyle textStyle = m.TextStyle(
      color: m.Colors.black,
      fontSize: 12,
    );

    final m.UnderlineInputBorder borderStyle = m.UnderlineInputBorder(
      borderSide: m.BorderSide(
        color: ThemeColors.darkGray,
        width: 1.0,
      ),
    );

    final m.UnderlineInputBorder focusedStyle = m.UnderlineInputBorder(
      borderSide: m.BorderSide(
        color: m.Theme.of(context).primaryColor,
        width: 2.0,
      ),
    );

    return m.TextFormField(
      decoration: decoration ??
          m.InputDecoration(
            hintStyle: textStyle,
            labelStyle: textStyle,
            enabledBorder: borderStyle,
            focusedBorder: focusedStyle,
            hintText: hintText ?? '',
            labelText: labelText ?? '',
          ),
      validator: validator ?? (String value) => null,
      controller: controller ?? null,
      keyboardType: keyboardType ?? m.TextInputType.text,
      style: this.style ?? style,
    );
  }
}
