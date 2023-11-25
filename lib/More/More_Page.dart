import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/More/widgets/activity_card.dart';
import 'package:flutter_spotify_ui/More/widgets/more_title.dart';
import 'package:flutter_spotify_ui/More/widgets/play_list_card.dart';
import 'package:flutter_spotify_ui/widgets/custom_title.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 54,
            ),
            const MoreTitle(title: "Your Library"),
            const PlayListCard(),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "See all",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTitle(title: "Your Activity"),
            const SizedBox(
              height: 16,
            ),
            const ActivityCard(title: 'Liked Songs', icon: Icons.favorite),
            Divider(color: Colors.grey.shade800,),
            const ActivityCard(title: 'Follow Artist', icon: Icons.people),
            Divider(color: Colors.grey.shade800,),
            const ActivityCard(title: 'Follow Podcast', icon: Icons.mic),
          Divider(color: Colors.grey.shade800,)
          ],
        ),
      ),
    );
  }
}

