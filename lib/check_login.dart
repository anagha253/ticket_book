import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ticket_book/adminlog.dart';
import 'package:ticket_book/auth.dart';
import 'package:ticket_book/pg1.dart';

class CheckLogin extends StatelessWidget {
  const CheckLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //if (user.email == "ab@gmail.com") {
            //   return const adminlog();
            // } else {
            return const pg1();
            // }
          } else {
            return const auth();
          }
        },
      ),
    );
  }
}
