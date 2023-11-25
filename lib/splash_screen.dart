import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/views/get_started/Spotify_Get_Started_Page.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreenSpotify extends StatelessWidget {
  const SplashScreenSpotify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen",
     // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: const Image(
            image: AssetImage("assets/images/spotify-logo-png-7078.png")),
        nextScreen: const GetStarted(),
        duration: 5000,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.black,
      ),
    );
  }
}
