import 'package:flutter/material.dart' as m;

class Icon extends m.StatelessWidget {
  final m.Color color;
  final double size;
  final m.IconData icon;

  Icon(
    this.icon, {
    this.color,
    this.size,
  });

  @override
  m.Widget build(m.BuildContext context) {
    return m.Icon(
      icon,
      size: 32.0,
      color: m.Colors.white,
    );
  }
}
