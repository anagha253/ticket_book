import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class adminlog extends StatefulWidget {
  const adminlog({Key? key}) : super(key: key);

  @override
  State<adminlog> createState() => _adminlogState();
}

class _adminlogState extends State<adminlog> {
  final _ademail = TextEditingController();
  final _adpswd = TextEditingController();

  Future adlogin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _ademail.text.trim(),
      password: _adpswd.text.trim(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _adpswd.dispose();
    _ademail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 45),
          child: Text("Ticket booking app"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 12, left: 10),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 70),
                child: Center(
                  child: Text(
                    "Admin-Login",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('images/irctc.png'),
                backgroundColor: Colors.white70,
                radius: 80,
              ),
              //login
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _ademail,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email-Id",
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _adpswd,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Password",
                  ),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 100, right: 100),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade900,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: GestureDetector(
                    onTap: adlogin,
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(13.0),
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
