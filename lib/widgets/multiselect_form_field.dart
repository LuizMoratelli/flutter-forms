import 'package:flutter/material.dart' as m;
import 'package:multiselect_formfield/multiselect_formfield.dart' as multsel;

class MultiSelectItem {
  final String text, value;

  MultiSelectItem(
    this.text, {
    this.value,
  });

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'value': value,
    };
  }
}

class MultiSelectFormField extends m.StatelessWidget {
  final String text;
  final List<MultiSelectItem> items;

  MultiSelectFormField(
    this.text, {
    this.items,
  });

  @override
  m.Widget build(m.BuildContext context) {
    return multsel.MultiSelectFormField(
      titleText: text,
      validator: (value) {
        if (value == null || value.length == 0) {
          return 'Uma ou mais opções devem ser selecionadas';
        }
      },
      dataSource: items.map((item) => item.toJson()).toList(),
      textField: 'text',
      valueField: 'value',
      okButtonLabel: 'OK',
      cancelButtonLabel: 'CANCELAR',
      hintText: 'Por favor, selecione uma ou mais opções',
    );
  }
}
