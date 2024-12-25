import 'package:notd_mobile/apps/notes/views/list/note_list_view.dart';
import 'package:notd_mobile/apps/tags/views/list/tag_list_view.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../base/export_view.dart';
import '../controllers/main_nav_controller.dart';

class MainNavPage extends StatelessWidget {
  const MainNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    MainNavController controller = Get.put(MainNavController());

    return Obx(
      () {
        return Scaffold(
          body: Builder(
            builder: (context) {
              switch (controller.index.value) {
                case 0:
                  return NoteListView();
                case 1:
                  return TagListView();
              }
              return Container();
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.index.value,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0.0,
            onTap: (v) => controller.setIndex(v),
            items: [
              BottomNavigationBarItem(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedHome01,
                  color: controller.index.value == 0
                      ? VColor.white
                      : VColor.greyText,
                  size: 20.0,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedGrid,
                  color: controller.index.value == 1
                      ? VColor.white
                      : VColor.greyText,
                  size: 20.0,
                ),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
