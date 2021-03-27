import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:rick_and_morty_contest/pages/about_page_two.dart';
import 'package:rick_and_morty_contest/utils/constants.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AboutPageTwo()));
        },
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 200,
                  height: 300,
                    child: Image(image: imageAboutPage)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 60, right: 5),
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                        textAbout, textStyle: kTextStyleAbout, speed: const Duration(milliseconds: 70))
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
