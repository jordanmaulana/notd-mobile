import 'package:hugeicons/hugeicons.dart';
import 'package:notd_mobile/apps/profile/controllers/profile_controller.dart';
import 'package:notd_mobile/apps/profile/views/profile_avatar.dart';
import 'package:notd_mobile/base/export_view.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.find();
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileAvatar(),
                    SizedBox(height: 16),
                    VText(
                      controller.profile?.name,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VText("Logout"),
                  IconButton(
                    icon: HugeIcon(
                      icon: HugeIcons.strokeRoundedLogout01,
                      color: VColor.white,
                      size: 20.0,
                    ),
                    onPressed: () {
                      controller.logout();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
