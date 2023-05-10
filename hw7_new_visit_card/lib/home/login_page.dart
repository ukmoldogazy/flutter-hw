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
              builder: (context) => UserPage(
                    student: student,
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
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://wallpapercave.com/wp/wp6245385.jpg',
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 90,
              right: 30,
              bottom: 90,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 72, 72, 72).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FlutterLogo(size: 80),
                      Text(
                        'Flutter',
                        style: AppTextStyle.welcomeStyle,
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
                      Icon(Icons.safety_check,
                          size: 30, color: Color.fromARGB(255, 140, 211, 143))
                    ],
                  ),
                  const Text('Keep your data safe!'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: TextField(
                      onChanged: (String value) {
                        _name = value;
                        debugPrint("Value works: $value");
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name:',
                        hintText: 'MOLDOGAZY',
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 24),
                        hintStyle: TextStyle(color: Colors.white, fontSize: 24),
                        helperStyle:
                            TextStyle(color: Colors.white, fontSize: 24),
                      ),
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
                        border: OutlineInputBorder(),
                        labelText: 'Email:',
                        hintText: 'ukmdoldogazy@gmail.com',
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 24),
                        hintStyle: TextStyle(color: Colors.white, fontSize: 24),
                        helperStyle:
                            TextStyle(color: Colors.white, fontSize: 24),
                      ),
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
                        'Submit',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
