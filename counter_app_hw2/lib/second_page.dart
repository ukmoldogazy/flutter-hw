import 'package:flutter/material.dart';

class TimesPressed extends StatelessWidget {
  const TimesPressed({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff112B3C),
        title: const Text('Санагыч колдонмо'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.grey,
              shape: BeveledRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 300,
                height: 100,
                child: Center(
                  child: Text(
                    'Сан: $count',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
