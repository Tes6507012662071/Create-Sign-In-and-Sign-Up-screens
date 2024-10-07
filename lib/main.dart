import 'package:flutter/material.dart';
import 'package:todolist_app/screens/sign_in_screen.dart';

void main(){
  runApp(const ToDoListApp());
}

class ToDoListApp extends StatefulWidget {
  const ToDoListApp({super.key});

  @override 
  State<ToDoListApp> createState() => _ToDoListAppState();
}

class _ToDoListAppState extends State<ToDoListApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do list application from I-BIT',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}