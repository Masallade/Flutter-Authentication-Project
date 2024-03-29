import 'package:u_authentication/authentication_service/auth_functions.dart';
import 'package:u_authentication/components/U_button.dart';
import 'package:u_authentication/components/U_textformfield.dart';
import 'package:u_authentication/components/slash_logo.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {

  final void Function()? goto_Register_page;

  const Login({super.key,required this.goto_Register_page});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController email_controller=TextEditingController();
  final TextEditingController password_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Slash_Logo(),
          const SizedBox(height: 60,),
          U_textformfield(
            hinttext: 'Email',
            obscure: false,
            controller: email_controller,
          ),
          const SizedBox(height: 10,),
          U_textformfield(
            hinttext: 'Password',
            obscure: true,
            controller: password_controller,
          ),
          const SizedBox(height: 10,),
          U_button(
           ontap:()=> login(context,email_controller.text,password_controller.text),
             button_name: 'Login'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
            Text("did'nt have a Account"),
              TextButton(
                onPressed: widget.goto_Register_page,
                child: Text(

                  'Register',
                  style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,fontStyle: FontStyle.italic),
                ),
              )

            ]
          )

        ],
      ),
    );
  }
}
