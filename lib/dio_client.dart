import 'package:dio/dio.dart';
import 'package:flutter_objective_ec/models/user.dart';

class DioClient{
  // final Dio dioClient 
  final Dio _dio = Dio();
  final _baseUrl = 'http://localhost:8001/';

  Future<User?> signin({required User user}) async{
    User? retrievedUser;

  try {
    Response response = await _dio.post(
      '${_baseUrl}auth/signup',
      data: user.toJson(),
    );

    // ignore: avoid_print
    print('User created: ${response.data}');

    retrievedUser = User.fromJson(response.data);
  } catch (e) {
    // ignore: avoid_print
    print('Error creating user: $e');
  }

  return retrievedUser;
  }
}