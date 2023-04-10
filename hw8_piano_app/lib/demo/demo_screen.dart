import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: 400,
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
                SizedBox(width: 110),
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
    );
  }
}

class DemoBlackKey extends StatefulWidget {
  const DemoBlackKey({super.key});

  @override
  State<DemoBlackKey> createState() => _DemoBlackKeyState();
}

class _DemoBlackKeyState extends State<DemoBlackKey> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.5 : 0.0),
        child: Container(
          color: isPressed ? Colors.grey[800] : Colors.black,
          width: 60,
          height: 200,
          child: Stack(children: [
            Transform(
              transform: Matrix4.rotationX(0.0),
              child: const Padding(
                padding: EdgeInsets.only(top: 80, left: 20),
                child: CircleAvatar(
                  maxRadius: 10,
                  backgroundColor: Color.fromARGB(137, 160, 160, 160),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class DemoWhiteKey extends StatefulWidget {
  const DemoWhiteKey({super.key});

  @override
  State<DemoWhiteKey> createState() => _DemoWhiteKeyState();
}

class _DemoWhiteKeyState extends State<DemoWhiteKey> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.3 : 0.0),
        child: Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
            color: isPressed ? Colors.grey[300] : Colors.white,
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
