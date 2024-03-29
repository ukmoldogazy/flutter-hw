import 'package:flutter/material.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        sliderTheme: SliderThemeData(
          thumbShape: SliderComponentShape.noThumb,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
