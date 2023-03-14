import 'package:flutter/material.dart';

class LoginSeccess extends StatelessWidget {
  const LoginSeccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECB90B),
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.info_outline,
            color: Colors.black,
          )
        ],
        backgroundColor: const Color(0xffECB90B),
        title: const Text(
          "Мен баймын",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I'm Rich",
              style: TextStyle(
                fontSize: 48,
                fontFamily: "Sofia",
              ),
            ),
            Image.asset(
              './assets/images/rich.png',
              width: 300,
            )
          ],
        ),
      ),
      // drawer: Drawer(
      //     backgroundColor: Colors.black,
      //     child: Container(color: const Color(0xffECB90B))),
      bottomNavigationBar:
          NavigationBar(backgroundColor: Colors.white, destinations: const [
        NavigationDestination(icon: Icon(Icons.flutter_dash), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.javascript), label: 'JavaSript'),
        NavigationDestination(icon: Icon(Icons.code), label: 'Coder'),
      ]),
    );
  }
}
