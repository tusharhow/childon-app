import 'package:childon/auth/signup.dart';
import 'package:childon/screens/about.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

final formKey = GlobalKey<FormState>();
final userAuth = FirebaseAuth.instance;
final emailController = TextEditingController();
final passwordController = TextEditingController();
final _auth = FirebaseAuth.instance;

class AuthController extends GetxController {
  Future<void> addUser(String emai, String pass) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final uid = FirebaseAuth.instance.currentUser?.uid;
    try {
      // var time = DateTime.now();
      await _auth.createUserWithEmailAndPassword(email: emai, password: pass);
      // .then((value) => {
      //       FirebaseFirestore.instance
      //           .collection('accounts')
      //           .doc(uid)
      //           .collection('users')
      //           .add({
      //         'email': emai,
      //         'password': pass,
      //         'creation': time.toString(),
      //         'id': uid,
      //       })
      //     });
      // await prefs.setString('authToken', uid.toString());
    } catch (e) {
      print('error creating account');
    }
  }

  Future<void> validLoginUser(String emailLog, String passLog) async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      // formKey.currentState!.validate();
      await _auth.signInWithEmailAndPassword(
          email: emailLog, password: passLog);
      await prefs.setString('authToken', uid!);
      print(uid);
    } catch (e) {
      print('error sign in ${e.toString()}');
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
