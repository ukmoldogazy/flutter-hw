import 'package:flutter/material.dart';
import './components/custom_button.dart';

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
            const CustomButton(
              icon: Icons.phone_outlined,
              text: 'Phone',
            ),
            const CustomButton(
              icon: Icons.email_outlined,
              text: 'Email',
            ),
          ],
        ),
      ),
    );
  }
}
