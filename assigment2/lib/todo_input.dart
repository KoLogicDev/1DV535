import 'package:flutter/material.dart';

class ToDoInput extends StatelessWidget {
  const ToDoInput({
    required this.text,
    required this.onPressed,
    super.key,
  });

  final String text;
  final Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: text);

    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: const InputDecoration(hintText: 'Do the homework'),
            controller: controller,
          ),
        ),
        FloatingActionButton.small(
          onPressed: () => onPressed(controller.text),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
