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
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(
        title: 'Санагыч колдонмо',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff112B3C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff112B3C),
        title: const Text(
          'Санагыч колдонмо',
          style: TextStyle(color: Color(0xffEFEFEF), fontSize: 32),
          textAlign: TextAlign.center,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              // ignore: sort_child_properties_last
              child: Center(
                  child: Text(
                "Сиз $index жолу чыкылдаттыңыз",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              )),
              decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF66B0E)),
                  onPressed: () {
                    setState(() {
                      index--;
                    });
                  },
                  child: const Icon(Icons.remove)),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF66B0E)),
                  onPressed: () {
                    setState(
                      () {
                        index++;
                      },
                    );
                  },
                  child: const Icon(Icons.add))
            ]),
          ],
        ),
      ),
    );
  }
}
