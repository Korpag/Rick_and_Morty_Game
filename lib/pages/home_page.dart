import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:kenburns/kenburns.dart';

import 'package:rick_and_morty_contest/pages/about_page.dart';
import 'package:rick_and_morty_contest/utils/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AboutPage()));
        },
        child: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              KenBurns(
                  minAnimationDuration: Duration(milliseconds: 3000),
                  maxAnimationDuration: Duration(milliseconds: 10000),
                  maxScale: 1.3,
                  child: Container(
                    child: Image(image: imageHomePage),
                  )),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedTextKit(totalRepeatCount: 10, animatedTexts: [
                    FadeAnimatedText(textWelcome, textStyle: kTextStyleWelcome)
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
