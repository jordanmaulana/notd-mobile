import 'package:flutter/material.dart';

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
