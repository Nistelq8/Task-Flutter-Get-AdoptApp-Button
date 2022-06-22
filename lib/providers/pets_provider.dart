import 'package:adopt_app/models/pet.dart';
import 'package:adopt_app/services/pet_services.dart';
import 'package:flutter/material.dart';

class PetsProvider extends ChangeNotifier {
  List<Pet> pets = [
    Pet(
        name: "Lucifurr",
        image: "https://i.ibb.co/P6VJ4pZ/smile-cat-1.png",
        age: 2,
        gender: "male")
  ];

  Future getPetsFirst() async {
    pets = await PetServices().getPets();
  }

  Future getPets() async {
    pets = await PetServices().getPets();
    notifyListeners();
  }
}
