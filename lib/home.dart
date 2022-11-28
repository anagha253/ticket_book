import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final _emailcontroller = TextEditingController();
  final _pswdcontroller = TextEditingController();
  Future Signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailcontroller.text.trim(),
      password: _pswdcontroller.text.trim(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailcontroller.dispose();
    _pswdcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(top: 30.0, left: 10, bottom: 20),
          child: Icon(
            Icons.menu,
            color: Colors.black,
            size: 35,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8, top: 30),
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50.0, left: 50, right: 50),
                  child: Center(
                    child: Text(
                      "Hi there!! 🤗",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Login to book your Train Ticket",
                    style: TextStyle(fontSize: 20),
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
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    //controller
                    controller: _emailcontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter email-Id",
                    ),
                  ),
                ), //phone number
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    //controller
                    controller: _pswdcontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Password",
                    ),
                    obscureText: true,
                  ),
                ), //password
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: Signin,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ), //button(login)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Not Registered?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      // onTap: widget.showRegisterPage,
                      child: const Text(
                        " Register Now",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ), //signup
              ],
            ),
          ),
        ),
      ),
    );
  }
}
