import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:rick_and_morty_contest/utils/constants.dart';
import 'package:rick_and_morty_contest/pages/game_page.dart';

class AboutPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => GamePage()));
        },
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    width: 350,
                    height: 400,
                    child: Image(image: imageAboutPageTwo)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 60, right: 5),
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                        textAboutTwo, textStyle: kTextStyleAbout, speed: const Duration(milliseconds: 70))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
