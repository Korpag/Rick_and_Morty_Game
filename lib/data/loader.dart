import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:rick_and_morty_contest/pages/error_page.dart';


class Person{
  final String name;
  final String avatar;
  final String status;
  final String gender;
  final String species;
}

Future<List<Person>> loadPersons() async{
  var response = await http.get(Uri.parse("https://rickandmortyapi.com/api/character"));
  List<Person> persons = [];

  if(response.statusCode == 200){
    var jsonResponse = convert.jsonDecode(response.body);
    List<dynamic> resultsList = jsonResponse["results"];

    for(var result in resultsList){
      Person person = Person();
      person.name = result["name"];
      person.avatar = result["image"];
      person.status = result["status"];
      person.species = result['species'];
      person.gender = result["gender"];

      persons.add(person);
    }
  } else {
    ErrorPage();
  }

  return persons;
}


