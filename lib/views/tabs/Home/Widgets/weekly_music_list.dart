import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/Data/data.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';

class WeeklyMusicList extends StatelessWidget {
  const WeeklyMusicList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: slider.length,
        itemBuilder: ((context, index) {
          final slide = slider[index];

          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                height: 125,
                width: 240,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  //color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                  image:
                      DecorationImage(image: AssetImage(""), fit: BoxFit.cover),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 254, 225, 111),
                       Color.fromARGB(255, 254, 111, 249),
                      Color.fromARGB(255, 50, 225, 11),
                    ],
                  ),
                ),
                child: Text(
                  slide["d"],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: "FiraSans",
                      fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                slide['title'],
                style: TextStyle(
                    color: ColorConstants.starterWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w100),
              )
            ],
          );
        }),
      ),
    );
  }
}
