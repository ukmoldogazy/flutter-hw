import 'package:flutter/material.dart';
import 'app/app.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
  runApp(const MyApp());
}
