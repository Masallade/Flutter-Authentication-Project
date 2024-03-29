import 'package:flutter/material.dart';
import 'package:u_authentication/authentication_service/auth_functions.dart';
class Home extends StatelessWidget {
  
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    Auth_function auth_func=Auth_function();
    final void Function() ? signout=()=>auth_func.signOut();


    return Scaffold(
      appBar: AppBar(
        actions:[
        IconButton(
            onPressed: ()=>auth_func.signOut(),
            icon: Icon(Icons.logout_outlined))
          ],
        title: Text('Home',style: TextStyle(color: Colors.teal),),
      ),
    );
  }
}
