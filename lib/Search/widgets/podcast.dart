import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/Data/data.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';

class PodCast extends StatelessWidget {
  const PodCast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          itemCount: podCast.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final podcast = podCast[index];
            
            return Container(
              height: 195,
              width: 155,
              decoration: BoxDecoration(
                  color: ColorConstants.cardBackGroundColor),
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 0),
                  margin: const EdgeInsets.all(4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                  [
                    Container(
                      height: 113,
                      width: 125,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(podcast['image']))
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Text(podcast['title'],style: TextStyle(
                      color: ColorConstants.starterWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: 8,),
                    Text(podcast['description'],style: TextStyle(
                      color: ColorConstants.starterWhite,
                      fontSize: 11,
                      fontWeight: FontWeight.w400
                    ),),
                  ],),
            );
          }),
    );
  }
}
