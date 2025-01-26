import 'package:notd_mobile/api/dio_client.dart';
import 'package:notd_mobile/base/resource.dart';
import 'package:get/get.dart';

import '../models/note.dart';

class NotesRepo {
  final DioClient _client = Get.find<DioClient>();

  Future<Resource<List<Note>, String>> getNotes({
    String? search,
    bool? isPrivate,
    String? userId,
  }) async {
    try {
      final response = await _client.get(
        '/v1/notes',
        queryParameters: {
          'search': search,
          'isPrivate': isPrivate,
          'userId': userId,
        },
      );

      final notes =
          (response.data as List).map((note) => Note.fromJson(note)).toList();
      return notes.toResourceSuccess();
    } on DioException catch (e) {
      return e.errorMessage.toResourceFailure();
    }
  }

  Future<void> addNote(Note note) async {
    // Add note to the database
  }

  Future<void> updateNote(Note note) async {
    // Update note in the database
  }

  Future<void> deleteNote(Note note) async {
    // Delete note from the database
  }
}
