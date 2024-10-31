import 'package:flutter/material.dart';
import 'package:todolist_app/screens/sign_in_screen.dart';
import 'package:todolist_app/screens/home_page.dart'; // Import the HomePage

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter bindings are initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ToDoListApp());
}

class ToDoListApp extends StatelessWidget {
  const ToDoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List Application',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/signin',
      routes: {
        '/signin': (context) => const SignInScreen(),
        '/home': (context) => const HomePage(), // Add HomePage route
      },
    );
  }
}
