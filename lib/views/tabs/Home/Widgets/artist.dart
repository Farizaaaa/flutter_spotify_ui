import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/Data/data.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';

class Artist extends StatelessWidget {
  const Artist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: artists.length,
          itemBuilder: (context, index) {
            final artist = artists[index];
            return Container(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 0),
              margin: const EdgeInsets.all(4),
              height: 155,
              width: 195,
              decoration: BoxDecoration(
                  color: ColorConstants.cardBackGroundColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: 125,
                    width: 125,
                    child: Image.asset(artist['image']),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    artist['name'],
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            );
          }),
    );
  }
}
