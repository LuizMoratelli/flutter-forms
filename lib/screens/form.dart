import 'package:flutter/material.dart' as m;
import 'package:forms/widgets/text_form_field.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';
import 'package:forms/utils/validator.dart';
import 'package:forms/theme.dart';

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
          m.GestureDetector(
            onTap: () async => await m.showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              builder: (m.BuildContext context, m.Widget child) {
                return m.Theme(
                  data: m.ThemeData.dark().copyWith(
                    primaryColor: ThemeColors.green,
                    accentColor: ThemeColors.green,
                  ),
                  child: child,
                );
              },
            ),
            child: m.AbsorbPointer(
              child: TextFormField(labelText: 'Data de Fundação'),
            ),
          ),
          TextFormField(labelText: 'Setor de atividade'),
          TextFormField(labelText: 'Número aproximado de empregados'),
          MultiSelectFormField(
            titleText: 'Qual é o seu entendimento acerca de inovação',
            validator: (value) {
              if (value == null || value.length == 0) {
                return 'Uma ou mais opções devem ser selecionadas';
              }
            },
            dataSource: [
              {
                'display': 'Teste',
                'value': 'teste',
              },
            ],
            textField: 'display',
            valueField: 'value',
            okButtonLabel: 'Ok',
            cancelButtonLabel: 'Cancel',
            hintText: 'Por favor, selecione uma ou mais opções',
          ),
        ],
      ),
    );
  }
}
