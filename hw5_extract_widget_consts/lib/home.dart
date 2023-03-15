import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            Image.network(
                'https://avatars.githubusercontent.com/u/64630832?v=4'),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.phone),
                    SizedBox(width: 30),
                    Text(
                      'Phone number',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.phone),
                    SizedBox(width: 30),
                    Text(
                      'Phone number',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
