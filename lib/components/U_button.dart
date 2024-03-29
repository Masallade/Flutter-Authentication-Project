import 'package:flutter/material.dart';

class U_button extends StatelessWidget {
  final void Function()? ontap;
  final String button_name;
  const U_button({super.key,required this.button_name, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: ontap,
      child: Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(25),

        ),
        child: Center(child: Text(button_name,style: const TextStyle(color: Colors.white,fontSize: 20),)),

      ),
    );
  }
}
