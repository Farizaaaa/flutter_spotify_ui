import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/Data/data.dart';
import 'package:flutter_spotify_ui/Search/widgets/browse_card.dart';
import 'package:flutter_spotify_ui/Search/widgets/podcast.dart';
import 'package:flutter_spotify_ui/Search/widgets/search_input.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';
import 'package:flutter_spotify_ui/widgets/WelcomeTitle.dart';
import 'package:flutter_spotify_ui/widgets/custom_title.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 54,
              ),
              const WelcomeTitle(title: "Search"),
              const SizedBox(
                height: 32,
              ),
              const SearchInput(),
              const SizedBox(
                height: 13,
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: searchList
                    .map((search) => Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: ColorConstants.cardBackGroundColor,
                              borderRadius: BorderRadius.circular(10)),
                          child:  Text(
                            search,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w100),
                          ),
                        ))
                    .toList(),
              ),
              const SizedBox(
                height: 24,
              ),
              const CustomTitle(title: "Podcasts"),
              const SizedBox(
                height: 13,
              ),
              const PodCast(),
              const SizedBox(
                height: 12,
              ),
              const CustomTitle(title: "Browse all"),
              const SizedBox(
                height: 13,
              ),
              const Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  BrowseCard(
                      title: "Made for You",
                      color1: '#E02FCF',
                      color2: '#00C188'),
                  BrowseCard(
                      title: "Made for You",
                      color1: '#0A3CEC',
                      color2: '#4DD4AC'),
                  BrowseCard(
                      title: "Made for You",
                      color1: '#0A3CEC',
                      color2: '#D9DD01'),
                  BrowseCard(
                      title: "Made for You",
                      color1: '#0E31AE',
                      color2: '#D01010'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

