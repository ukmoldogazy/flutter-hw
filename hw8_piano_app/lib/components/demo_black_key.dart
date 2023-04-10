import 'package:flutter/material.dart';

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
          child: Stack(
              alignment: isPressed ? Alignment.topCenter : Alignment.center,
              children: [
                Transform(
                  transform: Matrix4.rotationX(0.0),
                  child: AnimatedPositioned(
                    duration: const Duration(seconds: 2),
                    height: isPressed ? 200 : 0.0,
                    child: const CircleAvatar(
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
