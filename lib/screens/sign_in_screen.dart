import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/components/my_textformfield.dart';
import 'package:todolist_app/constant/constant.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
          child: Column(
            children: [
              const Spacer(),
              Text(
                'Hello, ready to get started!',
                style: textTitle,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Please sign-in to your account.',
                style: textSubTitle,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFormField(
                  controller: emailController,
                  obscureText: false,
                  labelText: 'Email',
                  hintText: 'Enter your email'),
              const SizedBox(
                height: 20,
              ),
              MyTextFormField(
                  controller: passwordController,
                  obscureText: true,
                  labelText: 'Password',
                  hintText: 'Enter your password'),
              const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('forgot password?', style: GoogleFonts.lato(fontSize: 18, color: Colors.grey),),
                  ],
                ),
                const SizedBox(height: 25,),

                MyButton(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding:  const EdgeInsets.all(15.0),
        margin: 
          const EdgeInsetsDirectional.symmetric(horizontal: 5.0),
        decoration:  BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(child: Text('Sign In', style: GoogleFonts.lato(color: Colors.white, fontSize: 20),)),
      ),
    );
  }
}
