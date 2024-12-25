import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notd_mobile/components/texts.dart';

import '../controllers/profile_controller.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.find();

    return CircleAvatar(
      child: VText(profileController.profile?.name.initial),
    );
  }
}
