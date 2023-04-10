import 'package:flutter/material.dart';
import '../components/demo_black_key.dart';
import '../components/demo_white_key.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
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
