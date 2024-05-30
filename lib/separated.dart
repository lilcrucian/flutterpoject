import 'package:flutter/material.dart';
import 'task.dart';

class SeparatedScreen extends StatefulWidget {
  @override
  _SeparatedScreenState createState() => _SeparatedScreenState();
}

class _SeparatedScreenState extends State<SeparatedScreen> {
  List<Task> tasks = [Task('Task 1'), Task('Task 2')];

  void _addTask() {
    setState(() {
      tasks.add(Task('Task ${tasks.length + 1}'));
    });
  }

  void _removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            key: ValueKey(tasks[index].name),
            title: Text(tasks[index].name),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => _removeTask(index),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        child: Icon(Icons.add),
      ),
    );
  }
}