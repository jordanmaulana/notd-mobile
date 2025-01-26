import 'package:notd_mobile/apps/notes/models/note.dart';
import 'package:notd_mobile/apps/notes/repo/notes_repo.dart';
import 'package:notd_mobile/base/base_controller.dart';
import 'package:notd_mobile/base/export_view.dart';

class NoteListController extends BaseListController {
  final NotesRepo _repo = NotesRepo();
  List<Note> data = [];
  TextEditingController searchController = TextEditingController();

  bool showSearchBar = false;

  void toggleSearchBar() {
    showSearchBar = !showSearchBar;
    if (!showSearchBar) {
      searchController.clear();
      getData();
    }
    update(['search_bar']);
  }

  @override
  Future<void> getData() async {
    setLoading(true);
    final result = await _repo.getNotes(search: searchController.text);
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
