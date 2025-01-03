import 'package:notd_mobile/apps/notes/models/note.dart';
import 'package:notd_mobile/apps/notes/repo/notes_repo.dart';
import 'package:notd_mobile/base/base_controller.dart';

class NoteListController extends BaseListController {
  final NotesRepo _repo = NotesRepo();
  List<Note> data = [];

  @override
  Future<void> getData() async {
    setLoading(true);
    final result = await _repo.getNotes();
    result.when(
      onSuccess: (data) {
        this.data = data;
      },
      onFailure: (error) {
        this.error = error;
      },
    );
    setLoading(false);
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
