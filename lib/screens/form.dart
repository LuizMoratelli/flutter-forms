import 'package:flutter/material.dart' as m;
import 'package:forms/widgets/text_form_field.dart';
import 'package:forms/utils/validator.dart';
import 'package:forms/theme.dart';
import 'package:forms/widgets/radio_form_field.dart';
import 'package:forms/widgets/date_form_field.dart';
import 'package:forms/widgets/multiselect_form_field.dart';

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
          DateFormField(
            'Data de fundação',
            initialDate: DateTime.now(),
          ),
          TextFormField(labelText: 'Setor de atividade'),
          TextFormField(labelText: 'Número aproximado de empregados'),
          RadioFormField(
            'Teste',
            groupValue: 't',
            items: [
              RadioItem(
                't1',
                value: '1',
              ),
            ],
          ),
          MultiSelectFormField(
            'Teste2',
            items: [
              MultiSelectItem('T2', value: 't2'),
            ],
          ),
        ],
      ),
    );
  }
}
