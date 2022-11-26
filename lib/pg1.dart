<<<<<<< HEAD
=======
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
>>>>>>> f102078 (2nd)
import 'package:flutter/material.dart';

class pg1 extends StatelessWidget {
  const pg1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: Center(
        child: Text("in!!"),
=======
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        elevation: 0,
        title: const Center(
          child: Text(
            'Train Ticket Booking',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'From ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.indigo,
                    ),
                  ),
                  hintText: 'Enter the source station',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'To ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.indigo.shade900,
                    ),
                  ),
                  hintText: 'Enter the destination station',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Arrival Time',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.indigo.shade900,
                    ),
                  ),
                  hintText: 'Expected time to reach destination',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade900,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
>>>>>>> f102078 (2nd)
      ),
    );
  }
}
