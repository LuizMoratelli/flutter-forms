import 'package:flutter/material.dart' hide TextFormField;
import 'package:forms/theme.dart';
import 'package:forms/widgets/text_form_field.dart';

class DateFormField extends StatelessWidget {
  final String text;
  final DateTime initialDate;

  DateFormField(
    this.text, {
    this.initialDate,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              primaryColor: ThemeColors.green,
              accentColor: ThemeColors.green,
            ),
            child: child,
          );
        },
      ),
      child: AbsorbPointer(
        child: TextFormField(labelText: text),
      ),
    );
  }
}
