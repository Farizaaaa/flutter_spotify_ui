import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';

class BrowseCard extends StatelessWidget {
  const BrowseCard(
      {super.key,
      required this.title,
      required this.color1,
      required this.color2});
  final String title;
  final String color1;
  final String color2;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width /2.25,
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 20),
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [hexToColor(color1), hexToColor(color2)])),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
  }
}
