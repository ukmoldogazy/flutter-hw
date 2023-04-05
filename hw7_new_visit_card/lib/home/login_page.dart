import 'package:flutter/material.dart';
import '../theme/app_text_style.dart';
import '../model.dart';
import './user_page.dart';

final students = <Student>[
  moldogazy,
  dinmukhamed,
  kalybek,
  nursultan,
  kydyrnazar
];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _name;
  String? _email;

  void controllerNameEmail(String name, String email) {
    int index = 0;
    for (final student in students) {
      index++;
      if (name == student.name && email == student.email) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const UserPage(
                    student: student.name,
                  )),
        );
        break;
      } else if (index == students.length) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("You data isn't correct!"),
          ),
        );
      } else {
        continue;
      }
    }
  }

/*
  void controllerNameEmail(String name, String email) {
    for (int i = 0; i <= students.length; i++) {
      if (name == students[i] && email == students[i]) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const UserPage(),
          ),
        );
        break;
      } else if (i == students.length) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("You data isn't correct!"),
          ),
        );
      } else {
        continue;
      }
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'.toUpperCase()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(size: 80),
                Text(
                  'Flutter',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Welcome to Saifty!',
                  style: AppTextStyle.welcomeStyle,
                ),
                Icon(Icons.safety_check, size: 30)
              ],
            ),
            const Text('Keep your data safe!'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: TextField(
                onChanged: (String value) {
                  _name = value;
                  debugPrint("Value works: $value");
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Name:'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                onChanged: (String value) {
                  _email = value;
                  debugPrint("Value works: $value");
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email:'),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  controllerNameEmail(_name!, _email!);
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
