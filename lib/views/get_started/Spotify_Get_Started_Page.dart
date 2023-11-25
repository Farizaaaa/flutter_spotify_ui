import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';
import 'package:flutter_spotify_ui/views/login/Spotify_Login_Page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Billie.webp"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "A digital music, podcast, and video service that gives you access to millions",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 32,
            ),
            MaterialButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SpotifyLoginPage())),
              height: 58,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(31),
              ),
              color: ColorConstants.primaryColor,
              child: 
              Text(
                "Get Started",
                style:
                    TextStyle(color: Colors.black, fontSize: 23),
              ),
            ),
            const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
