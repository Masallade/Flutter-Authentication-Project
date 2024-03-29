import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:u_authentication/Transfer/Login_Register__.dart';
import 'package:u_authentication/firebase_options.dart';
import 'package:u_authentication/pages/home.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform);
  runApp(Auth_Stream_Builder());
}
class Auth_Stream_Builder extends StatefulWidget {
  const Auth_Stream_Builder({super.key});

  @override
  State<Auth_Stream_Builder> createState() => _Auth_Stream_BuilderState();
}

class _Auth_Stream_BuilderState extends State<Auth_Stream_Builder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
          builder:(context,snapshot){
          if(snapshot.hasData){
            return Home();
          }
          else{
            return Login_Register__();
          }
          }
      ),
    );
  }
}

