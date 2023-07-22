import 'package:flutter/material.dart';
import 'package:flutter_assigment2/todo_list_tile.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({required this.list, required this.onItemTap, super.key});
  final List<String> list;
  final Function(String) onItemTap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: list.map<Widget>((String task) {
        return ToDoListTile(
          task: task,
          onTap: () => onItemTap(task),
        );
      }).toList(),
    );
  }
}
