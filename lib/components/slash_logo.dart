import 'package:flutter/material.dart';
class Slash_Logo extends StatelessWidget {
  const Slash_Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Authentication',style: TextStyle(fontSize: 30,color: Colors.teal),),
        Icon(Icons.login,color: Colors.blue,)
      ],
    );
  }
}
