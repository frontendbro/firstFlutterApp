import 'package:flutter/material.dart';
import 'package:flutter_app/toDoItem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<ToDoItem> toDoList = [
    ToDoItem(name: 'Купить кофе', accept: true, startDateTime: DateTime.now()),
    ToDoItem(name: 'Купить ёршик', accept: false, startDateTime: DateTime.now()),
    ToDoItem(name: 'Почистить зубы', accept: true, startDateTime: DateTime.now()),
    ToDoItem(name: 'Сварить борщ', accept: true, startDateTime: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo List',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ToDo'),
          centerTitle: true,
          backgroundColor: Colors.black45,
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: toDoList.length,
          itemBuilder: (_, index) => Card(
            child: Text(
              '${toDoList[index].name} __ ${toDoList[index].accept}',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {print('click btn');},
          child: Icon(Icons.adjust_outlined),
          backgroundColor: Colors.black45,
        ),
      ),
    );
  }
}