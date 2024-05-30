import 'package:flutter/material.dart';
import 'task.dart';

class ColumnScreen extends StatefulWidget {
  @override
  _ColumnScreenState createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: tasks.asMap().entries.map((entry) {
            int idx = entry.key;
            Task task = entry.value;
            return ListTile(
              key: ValueKey(task.name),
              title: Text(task.name),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => _removeTask(idx),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        child: Icon(Icons.add),
      ),
    );
  }
}