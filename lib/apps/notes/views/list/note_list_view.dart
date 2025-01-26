import 'package:hugeicons/hugeicons.dart';
import 'package:notd_mobile/apps/main_nav/views/main_drawer.dart';
import 'package:notd_mobile/apps/notes/controllers/note_list_controller.dart';
import 'package:notd_mobile/apps/notes/models/note.dart';
import 'package:notd_mobile/apps/notes/views/list/note_item.dart';

import 'package:notd_mobile/apps/profile/views/profile_avatar.dart';
import 'package:notd_mobile/base/export_view.dart';
import 'package:notd_mobile/components/inputs.dart';
import 'package:notd_mobile/components/lists.dart';
import 'package:notd_mobile/gen/assets.gen.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    NoteListController controller = Get.put(NoteListController());
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40.0,
        leading: Builder(builder: (context) {
          return InkWell(
            child: ProfileAvatar(),
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        title: GetBuilder(
          id: 'search_bar',
          builder: (NoteListController controller) {
            if (controller.showSearchBar) {
              return SizedBox(
                height: 42.0,
                child: VFormInput(
                  borderColor: VColor.titleItemText,
                  controller: controller.searchController,
                  hint: 'Search tags',
                  onChanged: (value) {
                    controller.getData();
                  },
                  dense: true,
                  fontSize: 12.0,
                  radius: 16.0,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      controller.toggleSearchBar();
                    },
                  ),
                ),
              );
            }
            return Image.asset(
              Assets.images.logo.path,
              height: 40.0,
              width: 40.0,
            );
          },
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedSearch01,
              color: VColor.white,
              size: 20.0,
            ),
            onPressed: () => controller.toggleSearchBar(),
          ),
        ],
      ),
      drawer: MainDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: GetBuilder(
          builder: (NoteListController controller) {
            return VList(
              padding: EdgeInsets.zero,
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
