import 'package:flutter/material.dart';
import 'package:forms/theme.dart';

import 'package:forms/screens/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário',
      theme: darkTheme,
      home: SafeArea(
        child: Home(),
      ),
    );
  }
}
