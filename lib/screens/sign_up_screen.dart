import 'package:flutter/material.dart';
import 'package:todolist_app/components/my_button.dart';
import 'package:todolist_app/components/my_textfield.dart';
import 'package:todolist_app/constant/constant.dart';
import 'package:todolist_app/screens/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final re_passwordController = TextEditingController();

  void signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print("Created account!");
    } catch (FirebaseAuthException) {
      print("Failed to create account!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 80, 15, 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to KMUTNB community',
                style: textTitle,
              ),
              const SizedBox(height: 20),
              Text(
                'To get started, please create an account.',
                style: textSubTitle,
              ),
              const SizedBox(height: 30),
              MyTextField(
                controller: usernameController,
                hintText: 'Enter your name',
                obscureText: false,
                labelText: 'Name',
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: emailController,
                hintText: 'Enter your email',
                obscureText: false,
                labelText: 'Email',
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: passwordController,
                hintText: 'Enter your password',
                obscureText: false,
                labelText: 'Password',
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: re_passwordController,
                hintText: 'Enter your password again',
                obscureText: false,
                labelText: 'Confirm Password',
              ),
              const SizedBox(height: 30),
              MyButton(
                onTap: () {
                  signUp(); // Sign up the user
                  // Optionally navigate to sign in after signing up
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInScreen(),
                    ),
                  );
                },
                hinText: 'Register now',
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already a member?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign In now',
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
