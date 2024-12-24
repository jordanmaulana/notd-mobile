import 'package:flutter_usecase_template/apps/tags/models/tag.dart';
import 'package:flutter_usecase_template/apps/tags/repo/tags_repo.dart';
import 'package:flutter_usecase_template/base/base_controller.dart';

class TagListController extends BaseListController {
  final TagsRepo _repo = TagsRepo();
  List<Tag> data = [];

  @override
  Future<void> getData() async {
    setLoading(true);
    final result = await _repo.getTags();
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
