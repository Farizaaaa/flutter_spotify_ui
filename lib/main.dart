import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/firebase_options.dart';
import 'package:flutter_spotify_ui/views/login/Spotify_Login_Page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: const Image(
            image: AssetImage(""),
          ),
          nextScreen: const SpotifyLoginPage(),
          // GetStarted(),
          duration: 500,
          backgroundColor: Colors.black,
        ));
  }
}
