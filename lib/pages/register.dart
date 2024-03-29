import 'package:u_authentication/authentication_service/auth_functions.dart';
import 'package:u_authentication/components/U_button.dart';
import 'package:u_authentication/components/U_textformfield.dart';
import 'package:u_authentication/components/slash_logo.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget{
  final void Function() ? goto_Login_page;
  const Register({super.key, required this.goto_Login_page});
  @ override
State<Register> createState()=> _RegisterState();
}
class _RegisterState extends State<Register>{
  final TextEditingController email_controller=TextEditingController();
  final TextEditingController password_controller=TextEditingController();
  final TextEditingController confromed_password_controller=TextEditingController();

  @ override
  Widget build(BuildContext context){
    Auth_function auth_func=Auth_function();
    final void Function(BuildContext context)register= (BuildContext context)=> auth_func.signUpWithEmailPassword(email_controller.text, password_controller.text);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Slash_Logo(),
          const SizedBox(height: 30,),
          U_textformfield(
              hinttext: 'Email',
              obscure: false,
              controller: email_controller),
          const SizedBox(height: 10,),
          U_textformfield(
              hinttext: 'Password',
              obscure: true,
              controller: password_controller),
          const SizedBox(height: 10,),
          U_textformfield(
              hinttext: 'Confromed Password',
              obscure: true,
              controller: confromed_password_controller),
          const SizedBox(height: 10,),
           U_button(
              button_name: 'Sign Up',
            ontap: ()=> register,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Text("Woo! Have a Account"),
                TextButton(
                  onPressed: widget.goto_Login_page,
                  child: Text(

                    'Login',
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