import 'package:flutter/material.dart';
import 'package:flutter_assigment2/todo_input.dart';
import 'package:flutter_assigment2/todo_list.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key, required this.title});
  final String title;

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  String newTask = '';
  final List<String> _list = ['feed the cat', 'water the plant', 'eat fruits'];

  void _addTask(String text) {
    if (text.isEmpty) return;
    setState(() {
      _list.add(text);
      newTask = '';
    });
  }

  void _completeTask(String task) {
    setState(() {
      _list.remove(task);
      newTask = task;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(child: ToDoList(list: _list, onItemTap: _completeTask)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ToDoInput(text: newTask, onPressed: _addTask),
              ),
              const SizedBox(height: 50),
            ]));
  }
}
