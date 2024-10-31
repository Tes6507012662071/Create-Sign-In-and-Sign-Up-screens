import 'package:flutter/material.dart';

class MyIconBtn extends StatelessWidget {
  
  final String imagePath;

  const MyIconBtn({
    super.key, required this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white,),
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey
          ),
          child: Image.asset(imagePath, height: 45, width: 50,),
        ),
      ],
    );
  }
}