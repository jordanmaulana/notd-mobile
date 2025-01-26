import 'package:flutter/material.dart';
import 'package:notd_mobile/apps/main_nav/controllers/main_nav_controller.dart';
import 'package:notd_mobile/apps/notes/controllers/note_list_controller.dart';

import 'package:notd_mobile/apps/tags/controllers/tag_list_controller.dart';
import 'package:notd_mobile/base/export_controller.dart';
import 'package:notd_mobile/components/lists.dart';
import 'package:notd_mobile/components/texts.dart';
import 'package:notd_mobile/configs/colors.dart';

import '../../models/tag.dart';

class TagListView extends StatelessWidget {
  const TagListView({super.key});

  @override
  Widget build(BuildContext context) {
    MainNavController mainNavController = Get.find();
    NoteListController noteListController = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GetBuilder(
          builder: (TagListController controller) {
            return VList(
              loading: controller.loading,
              length: controller.data.length,
              itemBuilder: (c, i) {
                Tag data = controller.data[i];
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
                  onTap: () {
                    mainNavController.setIndex(0);
                    noteListController.initSearch("#${data.name}");
                  },
                );
              },
              onRefresh: controller.resetPage,
              errorMsg: controller.error,
              padding: EdgeInsets.zero,
            );
          },
        ),
      ),
    );
  }
}
