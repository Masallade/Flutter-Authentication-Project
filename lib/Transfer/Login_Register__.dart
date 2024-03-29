import 'package:u_authentication/pages/main.dart';
import 'package:u_authentication/pages/register.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Login_Register__(),

    );
  }
}



class Login_Register__ extends StatefulWidget {
  const Login_Register__({super.key});

  @override
  State<Login_Register__> createState() => _Login_Register__State();
}

class _Login_Register__State extends State<Login_Register__> {
  bool login=true;
  void toogle(){
    if(login){
      setState(() {
        login=!login;

      });

    }
    else{
      setState(() {
        login=!login;

      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return login==true ? Login(goto_Register_page: toogle):Register(goto_Login_page: toogle,);
  }
}
