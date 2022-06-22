import 'package:adopt_app/models/user.dart';
import 'package:dio/dio.dart';

class AuthServices {
  final dioClient = Dio();

  Future<String> signup({required User user}) async {
    late String token;
    try {
      Response response =
          await dioClient.post("https://coded-pets-api-auth.herokuapp.com");
      token = response.data["token"];
    } on DioError catch (error) {
      print("error");
    }
    return token;
  }
}
