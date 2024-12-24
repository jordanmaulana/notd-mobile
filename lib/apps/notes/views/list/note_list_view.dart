import 'package:flutter/material.dart';
import 'package:flutter_usecase_template/apps/notes/controllers/note_list_controller.dart';
import 'package:flutter_usecase_template/apps/notes/models/note.dart';
import 'package:flutter_usecase_template/base/export_controller.dart';
import 'package:flutter_usecase_template/components/texts.dart';
import 'package:flutter_usecase_template/configs/colors.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: GetBuilder(
          builder: (NoteListController controller) {
            return ListView.separated(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                Note data = controller.data[index];
                return ListTile(
                  title: VText(
                    data.user.name,
                    fontWeight: FontWeight.bold,
                  ),
                  titleAlignment: ListTileTitleAlignment.top,
                  leading: CircleAvatar(),
                  subtitle: VText(data.content),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(color: VColor.greyText);
              },
            );
          },
        ),
      ),
    );
  }
}
