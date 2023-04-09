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
                return Container(
                  width: 20,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
