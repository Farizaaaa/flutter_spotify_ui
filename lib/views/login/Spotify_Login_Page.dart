import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/Tabs.dart';
import 'package:flutter_spotify_ui/constants/colors.dart';

class SpotifyLoginPage extends StatelessWidget {
  const SpotifyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool remember = true;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: SizedBox(
            height: height,
            child: Stack(
              children: [
                Container(
                  height: height / 2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorConstants.primaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: height / 5.83,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: height / 10,
                              child: Image.asset(""),
                            ),
                            SizedBox(
                              width: height / 35,
                            ),
                            const Text(
                              "Spotify",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height / 35,
                        ),
                        const Text(
                          "Millions of Songs, free on Spotify",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: height / 1.5,
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 40),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Text(
                                  "Login Account",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: height / 35,
                                ),
                                SizedBox(
                                    height: height / 17.5,
                                    child: Input(
                                        hint: "Email or Username",
                                        icon: Icons.email_outlined)),
                                SizedBox(
                                  height: height / 43.7,
                                ),
                                SizedBox(
                                    height: height / 17.5,
                                    child: Input(
                                        hint: "Password",
                                        icon: Icons.visibility)),
                                CheckboxListTile(
                                    activeColor: Colors.grey,
                                    checkColor: Colors.white,
                                    value: remember,
                                    title: const Text(
                                      "Remember me",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    onChanged: (bool? Val) {}),
                                SizedBox(
                                  height: height / 70,
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Tabs()));
                                  },
                                  color: ColorConstants.primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(31)),
                                  height: height / 17.5,
                                  child: const Text(
                                    "LOG IN",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                SizedBox(
                                  height: height / 43.75,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Divider(
                                      thickness: 1,
                                      height: 1,
                                      color: ColorConstants.starterWhite,
                                    )),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "or",
                                      style: TextStyle(
                                          color: ColorConstants.starterWhite,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Expanded(
                                        child: Divider(
                                      thickness: 1,
                                      height: 1,
                                      color: ColorConstants.starterWhite,
                                    )),
                                  ],
                                ),
                                SizedBox(
                                  height: height / 15,
                                ),
                                SizedBox(
                                  height: height / 30,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/images/google.png"),
                                      Image.asset("assets/images/facebook.webp")
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height / 30,
                                ),
                                Text(
                                  "Forget Password",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConstants.primaryColor),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height / 43.75,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't have an account",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Sign up now",
                                style: TextStyle(
                                    color: ColorConstants.primaryColor,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height / 17.5,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.hint,
    required this.icon,
  });

  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: hint,
          labelStyle:
              const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(26),
              borderSide: BorderSide(color: ColorConstants.starterWhite)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: BorderSide(
              color: ColorConstants.primaryColor,
            ),
          ),
          suffixIcon: Icon(icon)),
    );
  }
}
