import 'package:flutter/material.dart';

class Tech extends StatefulWidget {
  const Tech({super.key, required String title});

  @override
  State<Tech> createState() => _TechState();
}

class _TechState extends State<Tech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        title: const Text(
          'Homework four',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Moldogazy Kabylbekov',
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.w400,
                fontSize: 38,
                color: Colors.white),
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            color: Colors.white,
            child: TextFormField(
              style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff056c5c),
                  fontWeight: FontWeight.w600),
              onChanged: (value) => () {},
              decoration: const InputDecoration(
                hintText: '+49 163 7912826',
                hintStyle: TextStyle(
                  color: Color.fromARGB(109, 0, 0, 0),
                ),
                focusColor: Colors.white,
                prefixIcon: Icon(
                  Icons.phone_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            color: Colors.white,
            child: TextFormField(
              style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff056c5c),
                  fontWeight: FontWeight.w600),
              onChanged: (value) => () {},
              decoration: const InputDecoration(
                  hintText: 'devmoldogazy@gmail.com',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(109, 0, 0, 0),
                  ),
                  focusColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
