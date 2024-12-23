import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(
          child: Text("Welcome To Home Page",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            FirebaseAuth.instance.signOut();
            Navigator.pushNamed(context, "/login");
          },
          child: Container(
              height: 45,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text(
                'Sign out',
                style: TextStyle(color: Colors.white),
              )
            )
          ),
        )
      ],
    ));
  }
}
