import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/Data/data.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';
import 'package:flutter_spotify_ui/views/tabs/Home/Widgets/artist.dart';
import 'package:flutter_spotify_ui/views/tabs/Home/Widgets/top_music.dart';
import 'package:flutter_spotify_ui/views/tabs/Home/Widgets/weakly_title.dart';
import 'package:flutter_spotify_ui/views/tabs/Home/Widgets/weekly_music_list.dart';
import 'package:flutter_spotify_ui/widgets/WelcomeTitle.dart';
import 'package:flutter_spotify_ui/widgets/custom_title.dart';

class Spotify_HomePage extends StatefulWidget {
  const Spotify_HomePage({super.key});

  @override
  State<Spotify_HomePage> createState() => _Spotify_HomePageState();
}

class _Spotify_HomePageState extends State<Spotify_HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 54,
            ),
            const WelcomeTitle(title: "Good Morning"),
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
                        child: Text(
                          search,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w100),
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(
              height: 32,
            ),
            const WeaklyTitle(),
            const SizedBox(
              height: 24,
            ),
            const WeeklyMusicList(),
            const SizedBox(
              height: 16,
            ),
            const CustomTitle(title: "Your Top Music"),
            const TopMusic(),
            const SizedBox(
              height: 12,
            ),
            const CustomTitle(title: "Suggested Artists"),
            const Artist(),
          ],
        ),
      ),
    );
  }
}
