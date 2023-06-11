/*import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic result;
  Future<void> fetchData() async {
    final dio = Dio();
    await Future.delayed(const Duration(seconds: 3));
    result = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
    setState(() {});
  }

  @override
  initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyHomePage'),
      ),
      body: Center(
        child: result == null
            ? const CircularProgressIndicator()
            : Text('$result'),
      ),
    );
  }
}======================================
*/

import 'package:dio/dio.dart';
import 'package:featching/model.dart';
import 'package:flutter/material.dart';

import 'constants/api_const.dart';
import 'constants/colors.dart';
import 'constants/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<Weather> fetchData() async {
    Dio dio = Dio();
    // await Future.delayed(Duration(seconds: 4));
    final response = await dio.get(APIConst.weatherData);
    if (response.statusCode == 200) {
      final Weather weather = Weather(
        id: response.data['weather'][0]['id'],
        main: response.data['weather'][0]['main'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        temp: response.data['main']['temp'],
        name: response.data['name'],
      );
      return weather;
    }
    return response.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyHomePage'),
      ),
      body: Center(
        child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.none) {
                return const Text('You\'re not connected');
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                } else if (snapshot.hasData) {
                  final weatherrr = snapshot.data;
                  return Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        opacity: 0.4,
                        image: AssetImage('./assets/bg.jpg'),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.near_me_rounded,
                                color: AppColors.white,
                                size: 40,
                              ),
                              Icon(
                                Icons.location_city_outlined,
                                color: AppColors.white,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            Text(
                              '${(weatherrr!.temp - 275.15).toInt()}',
                              style: AppTextStyles.weaherDegree,
                            ),
                            Image.network(
                              APIConst.getIcon(weatherrr.icon, 4),
                            )
                          ],
                        ),
                        const SizedBox(height: 50),
                        Align(
                          alignment: Alignment.centerRight,
                          child: FittedBox(
                            child: Text(
                              weatherrr.description.replaceAll(' ', '\n'),
                              style: AppTextStyles.description,
                            ),
                          ),
                        ),
                        Expanded(
                          child: FittedBox(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                weatherrr.name,
                                style: AppTextStyles.description,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                } else {
                  return const Text('The data did came');
                }
              } else {
                return const Text('There are unexpected error');
              }
            }),
      ),
    );
  }
}
