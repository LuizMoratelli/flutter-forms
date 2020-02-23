import 'package:flutter/material.dart';

class RadioItem {
  final String text, value;
  RadioItem(this.text, {this.value});
}

class RadioFormField extends StatelessWidget {
  final String text, groupValue;
  final Function(String value) onChanged;
  final List<RadioItem> items;

  RadioFormField(this.text, {this.groupValue, this.onChanged, this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: items
            .map(
              (item) => ListTile(
                title: Text(item.text),
                leading: Radio(
                  value: item.value,
                  groupValue: groupValue,
                  onChanged: (String value) {},
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
