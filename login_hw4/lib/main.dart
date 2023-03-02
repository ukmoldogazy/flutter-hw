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
      home: const Login(title: 'Flutter Demo Home Page'),
    );
  }
}

final _formKey = GlobalKey<FormState>();

class Login extends StatefulWidget {
  const Login({super.key, required String title});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'MOLDOGAZY',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Pacifico',
                color: Colors.white,
              ),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: 'Pacifico',
                  decoration: TextDecoration.underline),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            TextFormField(
                              style: const TextStyle(
                                  backgroundColor: Colors.white,
                                  fontSize: 22,
                                  color: Color(0xff056C5C)),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter something';
                                } else {
                                  return null;
                                }
                              },
                              initialValue: '+49 163 7912826',
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.phone_outlined),
                              ),
                            ),
                          ],
                        ),
                        TextFormField(
                          style: const TextStyle(
                            backgroundColor: Colors.white,
                            color: Color(0xff056C5C),
                            fontSize: 22,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter something';
                            } else {
                              return null;
                            }
                          },
                          initialValue: 'devmoldogazy@gmail.com',
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.email_outlined),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Great!')));
                              }
                            },
                            child: const Text('Validate!'))
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
