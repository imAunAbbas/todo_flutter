import 'package:flutter/material.dart';
import 'package:todo_flutter/screens/all_todo.dart';
import 'package:todo_flutter/screens/completed_todo.dart';
import 'package:todo_flutter/screens/pending_todo.dart';

class TabNav extends StatefulWidget {
  @override
  _TabNavState createState() => _TabNavState();
}

class _TabNavState extends State<TabNav> {
  int _selectedIndex = 0;
    List<Widget> _screens = <Widget>[
      AllTodo(),
      ComTodo(),
      PenTodo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Todo'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            title: Text('Completed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cancel),
            title: Text('Pending'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
