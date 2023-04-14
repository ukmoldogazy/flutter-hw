import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.containersText,
    required this.containersText1,
    this.icon,
  });

  final String containersText, containersText1;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        children: [
          Text(containersText),
          Text(containersText1),
          Icon(icon),
        ],
      ),
    );
  }
}
