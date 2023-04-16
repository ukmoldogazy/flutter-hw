import 'package:flutter/material.dart';
import './container_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extract Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ContainerWidget(
              containersText: 'Container 1',
              containersText1: 'Container 2',
            ),
            SizedBox(height: 20),
            ContainerWidget(
              containersText: 'Container1',
              containersText1: 'Container 2',
              icon: Icons.abc_outlined,
            ),
            SizedBox(height: 20),
            ContainerWidget(
              containersText: 'Container1',
              containersText1: 'Container 2',
            ),
            SizedBox(height: 20),
            ContainerWidget(
              containersText: 'Container1',
              containersText1: 'Container 2',
              icon: Icons.pin_sharp,
            ),
            SizedBox(height: 20),
            ContainerWidget(
              containersText: 'Container1',
              containersText1: 'Container 2',
            ),
            SizedBox(height: 20),
            ContainerWidget(
              containersText: 'Container1',
              containersText1: 'Container 2',
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
