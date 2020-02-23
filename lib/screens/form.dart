import 'package:flutter/material.dart' as m;
import 'package:forms/widgets/text_form_field.dart';
import 'package:forms/utils/validator.dart';

class Form extends m.StatefulWidget {
  final formKey;

  Form({
    this.formKey,
  });

  @override
  _FormState createState() => _FormState();
}

class _FormState extends m.State<Form> {
  @override
  m.Widget build(m.BuildContext context) {
    final _formKey = widget.formKey ?? m.GlobalKey<m.FormState>();

    return m.Form(
      key: _formKey,
      child: m.Column(
        children: [
          TextFormField(
            labelText: 'Endereço de e-mail',
            validator: Validator.email,
          ),
          TextFormField(labelText: 'Data de Fundação'),
          TextFormField(labelText: 'Setor de atividade'),
          TextFormField(labelText: 'Número aproximado de empregados'),
        ],
      ),
    );
  }
}
