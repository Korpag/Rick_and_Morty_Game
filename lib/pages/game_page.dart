import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:rick_and_morty_contest/data/loader.dart';
import 'package:rick_and_morty_contest/utils/constants.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List<Person> persons = [];

  void loadPressed() async {
    var loadedPersons = await loadPersons();
    setState(() {
      this.persons = loadedPersons;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2),
          itemCount: persons.length,
          itemBuilder: (context, index) => Container(
            child: FlipCard(
              front: Container(
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: imageCard, fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        persons[index].name,
                        style: kTextStyleAbout,
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
              back: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: imageCardBack, fit: BoxFit.cover)),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        height: 25,
                        child: Text(
                          persons[index].name,
                          style: kTextStyleCardBackTitle,
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                      child: Container(
                        color: colorSizeBox,
                      ),
                      height: 2,
                    ),
                    SizedBox(
                      height: 120,
                      child: Image.network(persons[index].avatar),
                    ),
                    SizedBox(
                      child: Container(
                        color: colorSizeBox,
                      ),
                      height: 2,
                    ),
                    Card(
                      color: colorSizeBox,
                      elevation: 10,
                      child: Row(
                        children: <Widget>[
                          Spacer(),
                          Text(persons[index].gender),
                          Spacer(),
                          Text(persons[index].status),
                          Spacer(),
                          Text(persons[index].species),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: loadPressed,
        child: Image(image: imageError,),
      ),
    );
  }
}
