import 'package:get/get.dart';
import 'package:notd_mobile/apps/auth/usecases/register_usecase.dart';
import 'package:notd_mobile/components/toast.dart';

import '../../../components/popup.dart';

class RegisterController extends GetxController {
  final RegisterUsecase _registerUsecase = Get.find();

  RxBool obscureText = true.obs;
  void toggleObscure() => obscureText(!obscureText.value);

  RxBool obscureConfirmationText = true.obs;
  void toggleConfirmationObscure() =>
      obscureConfirmationText(!obscureConfirmationText.value);

  void submit(String email, String name, String password) async {
    VPopup.loading();
    final result = await _registerUsecase.invoke(email, name, password);
    VPopup.pop();
    result.when(
      onSuccess: (data) async {
        Get.back();
        VToast.success('Registration success, please login');
      },
      onFailure: (message) {
        VPopup.error(message);
      },
    );
  }
}
