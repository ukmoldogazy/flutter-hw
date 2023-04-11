import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DemoScrin extends StatefulWidget {
  const DemoScrin({super.key});

  @override
  State<DemoScrin> createState() => _DemoScrinState();
}

class _DemoScrinState extends State<DemoScrin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('do.mp3'));
                }),
                const SizedBox(width: 15),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('re.mp3'));
                }),
                const SizedBox(width: 15),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('mi.mp3'));
                }),
                const SizedBox(width: 15),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('fa.mp3'));
                }),
                const SizedBox(width: 15),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('sol.mp3'));
                }),
                const SizedBox(width: 15),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('lya.mp3'));
                }),
                const SizedBox(width: 15),
                WhitePlay(onTap: () {
                  AudioPlayer().play(AssetSource('si.mp3'));
                }),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class WhitePlay extends StatelessWidget {
  const WhitePlay({super.key, required this.onTap});
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        width: 60,
        color: Colors.white,
      ),
    );
  }
}
