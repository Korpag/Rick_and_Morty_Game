import 'package:flutter/material.dart';

import 'package:rick_and_morty_contest/pages/home_page.dart';
import 'package:rick_and_morty_contest/pages/splash_screen.dart';
import 'file:///C:/FlutterProjects/rick_and_morty_contest/lib/utils/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
              theme: kRickAndMortyTheme,
              debugShowCheckedModeBanner: false,
              home: SplashScreen());
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: kRickAndMortyTheme,
            home: HomePage(),
          );
        }
      },
    );
  }
}
