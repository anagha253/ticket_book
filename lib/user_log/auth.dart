import 'package:flutter/material.dart';
import 'package:ticket_book/user_log/home.dart';
import 'package:ticket_book/user_log/register.dart';

class auth extends StatefulWidget {
  const auth({Key? key}) : super(key: key);

  @override
  State<auth> createState() => _authState();
}

class _authState extends State<auth> {
  bool loginpg = true;
  void toggleScreens() {
    setState(() {
      loginpg = !loginpg;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loginpg) {
      return home(register: toggleScreens);
    } else {
      return Register(loginpg: toggleScreens);
    }
  }
}
