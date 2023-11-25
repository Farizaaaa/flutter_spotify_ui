import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';

class WeaklyTitle extends StatelessWidget {
  const WeaklyTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.electric_bolt_outlined,
          color: ColorConstants.primaryColor,
        ),
        RichText(
            text: TextSpan(
                text: "Weekly",
                style: TextStyle(
                    color: ColorConstants.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                children: [
              TextSpan(
                text: "Music",
                style: TextStyle(
                    color: ColorConstants.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )
            ]))
      ],
    );
  }
}
