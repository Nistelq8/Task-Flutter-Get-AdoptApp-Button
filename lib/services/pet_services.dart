import 'package:adopt_app/models/pet.dart';
import 'package:dio/dio.dart';

class PetServices {
  final dioclient = Dio();

  Future<List<Pet>> getPets() async {
    List<Pet> pets = [];
    try {
      Response responce =
          await dioclient.get("https://coded-pets-api-crud.herokuapp.com/pets");
      pets = (responce.data as List)
          .where((element) => element['name'] != null)
          .map((pets) => Pet.fromJson(pets))
          .toList();
    } on DioError catch (error) {
      print(error);
    }
    return pets;
  }
}
