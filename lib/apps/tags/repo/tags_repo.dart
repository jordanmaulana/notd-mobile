import 'package:flutter_usecase_template/api/dio_client.dart';
import 'package:flutter_usecase_template/apps/tags/models/tag.dart';
import 'package:flutter_usecase_template/base/resource.dart';
import 'package:get/get.dart';

class TagsRepo {
  final DioClient _client = Get.find<DioClient>();

  Future<Resource<List<Tag>, String>> getTags() async {
    try {
      final response = await _client.get('/v1/tags');

      final notes =
          (response.data as List).map((note) => Tag.fromJson(note)).toList();
      return notes.toResourceSuccess();
    } on DioException catch (e) {
      return e.errorMessage.toResourceFailure();
    }
  }
}
