import '../../../api/dio_client.dart';

import '../../../base/resource.dart';

class RegisterUsecase {
  final DioClient _dioClient;

  RegisterUsecase({
    required DioClient dioClient,
  }) : _dioClient = dioClient;

  Future<Resource<bool, String>> invoke(
      String email, String name, String password) async {
    try {
      await _dioClient.post(
        '/v1/register',
        data: {
          'email': email,
          'name': name,
          'password': password,
        },
      );

      return true.toResourceSuccess();
    } on DioException catch (e) {
      return e.errorMessage.toResourceFailure();
    }
  }
}
