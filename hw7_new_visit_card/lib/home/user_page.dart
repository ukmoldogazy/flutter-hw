import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.student});
  final String student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserPage'),
      ),
      body: Column(
        children: [
          Text(student),
        ],
      ),
    );
  }
}
// https://youtu.be/WUrUPbMJMU8?list=PLWu9OGm_n5CcahNAV5AFUgww4Ee_5tJgU&t=5370