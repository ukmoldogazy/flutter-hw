import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extract Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.grey[300],
                child: Column(
                  children: const [
                    Text('Text 1'),
                    Text('Text 1'),
                    Text('Text 1'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.grey[300],
                child: Column(
                  children: const [
                    Text('Text 1'),
                    Text('Text 1'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
