import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Auth_function{

  final FirebaseAuth _auth=FirebaseAuth.instance;

  Future<UserCredential>signInWithEmailPassword(String email,password) async{
    try{
      UserCredential userCredential=
     await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    }on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }


  }

  Future<UserCredential>signUpWithEmailPassword(String email,password)async{
    try{
      UserCredential userCredential=
      await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password);

      return userCredential;
    }on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
  }

  Future<void>signOut()async{
    await _auth.signOut();
  }



}

void login(BuildContext context,String email,password)async{
  Auth_function auth_func=Auth_function();
  try{
    await auth_func.signInWithEmailPassword(email,password);
  }catch(e){
    showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          title: Text(e.toString()),
        ));

  }
}


