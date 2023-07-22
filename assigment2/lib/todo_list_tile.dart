import 'package:flutter/material.dart';
import 'dart:math' as math;

class ToDoListTile extends StatelessWidget {
  const ToDoListTile({required this.task, required this.onTap, super.key});

  final String task;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var icon = Icons.radio_button_unchecked;
    final rnd = math.Random().nextDouble();
    final color = Color((rnd * 0xFFFFFF).toInt()).withOpacity(1.0);

    final style = TextStyle(
        color: color, decoration: TextDecoration.underline, fontSize: 22);

    return ListTile(
      onTap: onTap,
      leading: Icon(icon),
      title: Text(task, style: style),
    );
  }
}
