import 'package:flutter/material.dart';
import 'package:hw7_new_visit_card/constants/text_styles.dart';
import 'package:hw7_new_visit_card/model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(159, 44, 145, 181),
      appBar: AppBar(
        title: Text(
          'Welcome ${student.name}',
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(student.avatar),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ID: ${student.id.toString()}',
                        style: UserPageText.userStyle,
                      ),
                      Text(
                        'Firstname: ${student.name}',
                        style: UserPageText.userStyle,
                      ),
                      Text(
                        'Surename: ${student.sureName}',
                        style: UserPageText.userStyle,
                      ),
                      Text('Age: ${student.age.toString()}',
                          style: UserPageText.userStyle),
                      Text('Phone: ${student.phoneNumber}',
                          style: UserPageText.userStyle),
                      Text('Email: ${student.email}',
                          style: UserPageText.userStyle),
                      Text('Address: ${student.address}',
                          style: UserPageText.userStyle),
                      Text('Group: ${student.group.toString()}',
                          style: UserPageText.userStyle),
                      Text('Status: ${student.status}',
                          style: UserPageText.userStyle),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// https://youtu.be/WUrUPbMJMU8?list=PLWu9OGm_n5CcahNAV5AFUgww4Ee_5tJgU&t=5370