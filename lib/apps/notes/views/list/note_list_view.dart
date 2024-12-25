import 'package:flutter/material.dart';
import 'package:flutter_usecase_template/apps/notes/controllers/note_list_controller.dart';
import 'package:flutter_usecase_template/apps/notes/models/note.dart';
import 'package:flutter_usecase_template/apps/notes/views/list/note_item.dart';
import 'package:flutter_usecase_template/base/export_controller.dart';
import 'package:flutter_usecase_template/components/lists.dart';
import 'package:flutter_usecase_template/gen/assets.gen.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40.0,
        leading: CircleAvatar(),
        title: Image.asset(
          Assets.images.logo.path,
          height: 40.0,
          width: 40.0,
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: GetBuilder(
          builder: (NoteListController controller) {
            return VList(
              loading: controller.loading,
              length: controller.data.length,
              itemBuilder: (c, i) {
                Note data = controller.data[i];
                return NoteItem(data);
              },
              onRefresh: controller.resetPage,
              errorMsg: controller.error,
            );
          },
        ),
      ),
    );
  }
}
