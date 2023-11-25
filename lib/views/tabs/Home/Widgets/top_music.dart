import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/Data/data.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';

class TopMusic extends StatelessWidget {
  const TopMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
          itemCount: topMixes.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final topMix = topMixes[index];
            return Container(
                decoration: BoxDecoration(
                    color: ColorConstants.cardBackGroundColor,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 0),
                margin: EdgeInsets.all(4),
                height: 135,
                width: 195,
                child: Column(
                  children: [
                    Container(
                      height: 113,
                      width: 145,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                topMix['image'],
                              ),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 7,
                            height: 24,
                            decoration: BoxDecoration(
                                color: hexToColor(topMix['color'])),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 8,
                            decoration: BoxDecoration(
                                color: hexToColor(topMix['color']),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25))),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      topMix['title'],
                      style: TextStyle(
                          color: ColorConstants.starterWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      topMix["description"],
                      style: TextStyle(
                          color: ColorConstants.starterWhite,
                          fontSize: 11,
                          fontWeight: FontWeight.w100),
                    )
                  ],
                ));
          }),
    );
  }
}
