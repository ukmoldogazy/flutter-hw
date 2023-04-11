import 'package:flutter/material.dart';

import '../components/demo_black_key.dart';
import '../components/demo_white_key.dart';

class DemoScrin extends StatefulWidget {
  const DemoScrin({super.key});

  @override
  State<DemoScrin> createState() => _DemoScrinState();
}

class _DemoScrinState extends State<DemoScrin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: 440,
          child: Stack(
            children: [
              ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return const DemoWhiteKey();
                },
              ),
              Row(
                children: const [
                  SizedBox(width: 51),
                  DemoBlackKey(),
                  SizedBox(width: 20),
                  DemoBlackKey(),
                  SizedBox(width: 20),
                  DemoBlackKey(),
                  SizedBox(width: 20),
                  DemoBlackKey(),
                  SizedBox(width: 20),
                  DemoBlackKey(),
                  SizedBox(width: 20),
                  DemoBlackKey(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
