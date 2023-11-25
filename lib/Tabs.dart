import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/More/More_Page.dart';
import 'package:flutter_spotify_ui/Search/Search_Page.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';
import 'package:flutter_spotify_ui/views/get_started/Spotify_Get_Started_Page.dart';

import 'views/tabs/Home/Spotify_homePage.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;
  final List _screen = [
    const Spotify_HomePage(),
    const SearchPage(),
    const MorePage(),
    const GetStarted()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: ColorConstants.primaryColor,
          unselectedItemColor: Colors.white,
          enableFeedback: true,
          currentIndex: _selectedIndex,
          onTap: (index) {
            {
              setState(() {
                _selectedIndex = index;
              });
            }
          },
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              activeIcon: Icon(Icons.more_horiz),
              label: "Your Library",
            )
          ]),
    );
  }
}
