import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/task_list.dart';

class ComTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('Completed Todo List'),
      ),
      body: SizedBox(
        height: height,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
          ),
          child: Center(
            child: CompletedList(),
          ),
        ),
      ),
    );
  }
}

// Text('No completed task to show yet')