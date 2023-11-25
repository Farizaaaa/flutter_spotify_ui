import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // ignore: prefer_const_constructors
      style: TextStyle(
        color: Colors.white,
        fontSize: 11,
      ),
      decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(
              color: ColorConstants.inputHintColor, fontSize: 1),
          filled: true,
          fillColor: ColorConstants.cardBackGroundColor,
          prefixIcon: Icon(
            Icons.search,
            color: !FocusScope.of(context).isFirstFocus
                ? Colors.white
                : ColorConstants.primaryColor,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorConstants.primaryColor
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          )
          ),
          
          
    );
  }
}
