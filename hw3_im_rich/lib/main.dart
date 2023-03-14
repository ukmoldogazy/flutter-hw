import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECB90B),
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.info_outline,
            color: Colors.black,
          ),
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
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Container(
          color: const Color(0xffECB90B),
        ),
      ),
      bottomNavigationBar:
          NavigationBar(backgroundColor: Colors.white, destinations: const [
        NavigationDestination(icon: Icon(Icons.flutter_dash), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.javascript), label: 'JavaSript'),
        NavigationDestination(icon: Icon(Icons.code), label: 'Coder'),
      ]),
    );
  }
}
