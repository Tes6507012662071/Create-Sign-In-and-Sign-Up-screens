import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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