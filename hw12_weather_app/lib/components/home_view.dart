import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hw12_weather_app/constants/api_const.dart';
import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../model.dart';
import 'package:flutter/material.dart';

const List cities = <String>[
  'Bishkek',
  'Osh',
  'Jalal-Abad',
  'Karakol',
  'Naryn',
  'Talas',
  'Batken',
  'Tokmok'
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Weather? weather;
  Future<void> getLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.always &&
        permission == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio();
      // await Future.delayed(Duration(seconds: 4));
      final response = await dio.get(
          APIConst.address(lat: position.latitude, lon: position.longitude));
      if (response.statusCode == 200) {
        weather = Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          temp: response.data['current']['temp'],
          name: response.data['timezone'],
        );
      }
      setState(() {});
    } else {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio();
      // await Future.delayed(Duration(seconds: 4));
      final response = await dio.get(
          APIConst.address(lat: position.latitude, lon: position.longitude));
      if (response.statusCode == 200) {
        weather = Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          temp: response.data['current']['temp'],
          name: response.data['timezone'],
        );
      }
      setState(() {});
    }
  }
///////////////////////////

  Future<void> fetchData([String? url]) async {
    Dio dio = Dio();
    // await Future.delayed(Duration(seconds: 4));
    final response = await dio.get(APIConst.weatherData(url ?? 'bishkek'));
    if (response.statusCode == 200) {
      weather = Weather(
        id: response.data['weather'][0]['id'],
        main: response.data['weather'][0]['main'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        temp: response.data['main']['temp'],
        name: response.data['name'],
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: weather == null
              ? const CircularProgressIndicator()
              : Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      opacity: 0.4,
                      image: AssetImage(
                        './assets/bg.jpg',
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () async {
                                await getLocation();
                              },
                              icon: const Icon(
                                Icons.near_me_rounded,
                                color: AppColors.white,
                                size: 40,
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                                showBottom();
                              },
                              icon: const Icon(
                                Icons.location_city_outlined,
                                color: AppColors.white,
                                size: 40,
                              ),
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
                            '${(weather!.temp - 275.15).toInt()}',
                            style: AppTextStyles.weaherDegree,
                          ),
                          Image.network(
                            APIConst.getIcon(weather!.icon, 4),
                          )
                        ],
                      ),
                      const SizedBox(height: 4),
                      Align(
                        alignment: Alignment.centerRight,
                        child: FittedBox(
                          child: Text(
                            weather!.description.replaceAll(' ', '\n'),
                            style: AppTextStyles.description,
                          ),
                        ),
                      ),
                      Expanded(
                        child: FittedBox(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              weather!.name,
                              style: AppTextStyles.description,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        ));
  }

  void showBottom() async {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView.builder(
              itemCount: cities.length,
              itemBuilder: (context, index) {
                final city = cities[index];
                return Card(
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        weather = null;
                      });
                      fetchData(city);
                      Navigator.pop(context);
                    },
                    title: Text(
                      '$city',
                      style: AppTextStyles.citiesName,
                    ),
                  ),
                );
              }),
        );
      },
    );
  }
}
