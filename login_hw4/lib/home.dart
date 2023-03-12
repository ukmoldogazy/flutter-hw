import 'package:flutter/material.dart';
import 'package:login_hw4/login_seccess.dart';

class Tech extends StatefulWidget {
  const Tech({super.key, required String title});

  @override
  State<Tech> createState() => _TechState();
}

class _TechState extends State<Tech> {
  bool isActive = false;
  String? phone;
  String? email;

  void isClicked() {
    if (phone != null && email != null) {
      if (phone!.isEmpty || email!.isEmpty) {
        isActive = false;
      } else {
        isActive = true;
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        title: const Text(
          'Visit Card',
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
          const Divider(
            height: 2,
            thickness: 2,
            indent: 57,
            endIndent: 57,
            color: Colors.white,
          ),
          const SizedBox(height: 23.5),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            color: Colors.white,
            child: TextFormField(
              style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff056c5c),
                  fontWeight: FontWeight.w600),
              onChanged: (String? value) {
                phone = value;
                isClicked();
                debugPrint("Phone: $phone");
                debugPrint("Value: $value");
              },
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
              onChanged: (String? value) {
                email = value;
                isClicked();
              },
              decoration: const InputDecoration(
                labelText: 'Enter your email',
                labelStyle: TextStyle(
                  color: Color.fromARGB(109, 0, 0, 0),
                ),
                focusColor: Colors.white,
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              elevation: 30,
              side: const BorderSide(
                width: 1,
                color: Colors.black,
              ),
            ),
            onPressed: isActive
                ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginSeccess()));
                  }
                : null,
            child: const Text(
              'Мени чыкылдат',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
