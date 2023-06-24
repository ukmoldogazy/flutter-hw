import 'package:flutter/material.dart';
import 'package:hw14_capitals/constants/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarBg,
          title: const Text(
            'Мамлекеттер борбору',
            style: TextStyle(),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: AppColors.blue,
              ),
              tooltip: 'Settings',
              onPressed: () {
                // handle the press
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: AppColors.black,
              ),
              tooltip: 'Learn more',
              onPressed: () {
                // handle the press
              },
            ),
          ],
          elevation: 0,
        ),
        body: const Column(
          // backgroundColor: AppColors.scaffoldBg,
          children: [
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 1.4,
              color: AppColors.black,
            ),
            //
          ],
        ),
      ),
    );
  }
}
// 