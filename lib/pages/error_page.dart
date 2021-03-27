import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:rick_and_morty_contest/pages/home_page.dart';
import 'package:rick_and_morty_contest/utils/constants.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    width: 200,
                    height: 300,
                    child: Image(image: imageError)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 60, right: 5),
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                        textError, textStyle: kTextStyleAbout, speed: const Duration(milliseconds: 70))
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
