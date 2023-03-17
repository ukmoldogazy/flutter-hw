import 'dart:math';
// import 'dart:aud';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int left = 1;
  int right = 1;

  void change() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff344D67),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
        title: const Text(
          'Dice App',
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (left == 4 || right == 4)
            Container(
              color: const Color(0xffEEEEEE),
              width: 150,
              height: 30,
              child: const Center(
                child: Text(
                  'Урааа',
                  style: TextStyle(color: Color(0xff3E6D9C), fontSize: 20),
                ),
              ),
            ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () {
                          change();
                        },
                        child: Image.asset('assets/images/dice$left.png'))),
                const SizedBox(width: 25),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          change();
                        },
                        child: Image.asset('assets/images/dice$right.png')))
              ],
            ),
          )
        ],
      ),
    );
  }
}
