import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  SignUp() {
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text, password: passwordcontroller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sign up screen"),
        backgroundColor: const Color.fromARGB(255, 18, 47, 97),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller: emailcontroller,
              ),
              TextFormField(
                controller: passwordcontroller,
              ),
              MaterialButton(
                child: Text('SignUp'),
                onPressed: () {
                  SignUp();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
