// import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget soundTile({required Color color, required String soundNumber}) {
    // final player = AudioCache();

    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
        onPressed: () {
          // final player = AudioCache();
          // player.play('assets/note1.mp3');
          // player.play(AssetSource('assets/note1.mp3'));
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Xylophone')),
        body: Column(
          // children: <Widget>[
          //   Expanded(child: Container(color: Colors.red)),
          //   Expanded(child: Container(color: Colors.amber)),
          //   Expanded(child: Container(color: Colors.yellow)),
          //   Expanded(child: Container(color: Colors.green)),
          //   Expanded(child: Container(color: Colors.teal)),
          //   Expanded(child: Container(color: Colors.blue)),
          //   Expanded(child: Container(color: Colors.purple)),
          // ],
          children: [
            soundTile(color: const Color(0xff002B5B), soundNumber: '1'),
            soundTile(color: const Color(0xffFFD966), soundNumber: '2'),
            soundTile(color: const Color(0xffF4B183), soundNumber: '3'),
            soundTile(color: const Color(0xff00FFCA), soundNumber: '4'),
            soundTile(color: const Color(0xff088395), soundNumber: '5'),
            soundTile(color: const Color(0xff05BFDB), soundNumber: '6'),
            soundTile(color: const Color(0xffDDFFBB), soundNumber: '7'),
          ],
        ),
      ),
    );
  }
}
