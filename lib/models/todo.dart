import 'package:flutter/cupertino.dart';

class ToDo{
  String? id;
  String? todoText;
  bool? isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone=false,
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Check Mail', isDone: true),
      ToDo(id: '02', todoText: 'Go to Gym', isDone: true),
      ToDo(id: '03', todoText: 'Buy Groceries', ),
      ToDo(id: '04', todoText: 'Read a Book', ),
      ToDo(id: '05', todoText: 'Complete Project',),
      ToDo(id: '06', todoText: 'Call Mom', isDone: true),
    ];
  }
}