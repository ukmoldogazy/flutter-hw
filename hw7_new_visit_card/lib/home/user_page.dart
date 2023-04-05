import 'package:flutter/material.dart';
import 'package:hw7_new_visit_card/model.dart';

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
        children: const [Text('User data...')],
      ),
    );
  }
}
// https://youtu.be/WUrUPbMJMU8?list=PLWu9OGm_n5CcahNAV5AFUgww4Ee_5tJgU&t=5370