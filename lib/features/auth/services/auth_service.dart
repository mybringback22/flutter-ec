import 'package:flutter_objective_ec/dio_client.dart';
import 'package:flutter_objective_ec/models/user.dart';

class AuthService {
  void signup({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '',
          createdAt: '');
      DioClient dioClient = DioClient();
      User? response  = await dioClient.signin(user: user);
    } catch (e) {
      
    }
  }
}
