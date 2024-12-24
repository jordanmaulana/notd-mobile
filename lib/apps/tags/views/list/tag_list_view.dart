import 'package:flutter/material.dart';

import 'package:flutter_usecase_template/apps/tags/controllers/tag_list_controller.dart';
import 'package:flutter_usecase_template/base/export_controller.dart';
import 'package:flutter_usecase_template/components/texts.dart';
import 'package:flutter_usecase_template/configs/colors.dart';

import '../../models/tag.dart';

class TagListView extends StatelessWidget {
  const TagListView({super.key});

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
          builder: (TagListController controller) {
            return ListView.separated(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                Tag data = controller.data[index];
                return ListTile(
                  title: VText(
                    data.name,
                    fontWeight: FontWeight.bold,
                  ),
                  titleAlignment: ListTileTitleAlignment.top,
                  subtitle: VText(
                    "${data.count} notes",
                    color: VColor.greyText,
                  ),
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
