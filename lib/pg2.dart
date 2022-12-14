import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ticket_book/pg1.dart';

class pg2 extends StatefulWidget {
  const pg2({Key? key}) : super(key: key);

  @override
  State<pg2> createState() => _pg2State();
}

class _pg2State extends State<pg2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        leading: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll<Color>(Colors.indigo.shade900),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const pg1()));
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text("Ticket booking app"),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 250, top: 5, bottom: 5),
                child: Text('Logut'),
              ),
              MaterialButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                  child: Icon(
                    Icons.logout,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
