import 'package:flutter/material.dart';
import 'package:notd_mobile/apps/auth/views/login/login_page.dart';
import 'package:notd_mobile/apps/main_nav/views/main_nav_page.dart';
import 'package:notd_mobile/apps/profile/controllers/profile_controller.dart';
import 'package:notd_mobile/configs/route_name.dart';
import 'package:notd_mobile/init_di.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

import 'apps/auth/views/register/register_page.dart';
import 'configs/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    initDi();
    return ToastificationWrapper(
      child: GetMaterialApp(
        title: 'Notd',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
          scaffoldBackgroundColor: VColor.scaffoldBg,
          appBarTheme: const AppBarTheme(
            backgroundColor: VColor.scaffoldBg,
            foregroundColor: VColor.white,
          ),
        ),
        getPages: [
          GetPage(
            name: RouteName.main,
            page: () {
              return GetBuilder(
                builder: (ProfileController controller) {
                  if (controller.profile == null) return const LoginPage();
                  return const MainNavPage();
                },
              );
            },
          ),

          /// Add more pages here
          GetPage(
            name: RouteName.register,
            page: () => const RegisterPage(),
          ),
        ],
      ),
    );
  }
}
