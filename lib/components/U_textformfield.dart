import 'package:flutter/material.dart';

class U_textformfield extends StatelessWidget{
  final String hinttext;
  final bool obscure;
  final TextEditingController controller;
  const U_textformfield({
    super.key,
    required this.hinttext,
    required this.obscure,
    required this.controller,
  });

  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(25),
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(

          hintText: hinttext,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightBlue),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.teal)
          )
        ),
      
      ),
    );
  }

}