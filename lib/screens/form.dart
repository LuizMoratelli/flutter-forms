import 'package:flutter/material.dart' as m;
import 'package:forms/widgets/text_form_field.dart';

class Form extends m.StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends m.State<Form> {
  final _formKey = m.GlobalKey<m.FormState>();

  @override
  m.Widget build(m.BuildContext context) {
    return m.Form(
      key: _formKey,
      child: m.Column(
        children: [TextFormField()],
      ),
    );
  }
}
