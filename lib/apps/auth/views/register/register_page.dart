import 'package:flutter/foundation.dart';
import 'package:notd_mobile/apps/auth/controllers/register_controller.dart';
import 'package:notd_mobile/gen/assets.gen.dart';

import '../../../../base/export_view.dart';
import '../../../../components/buttons.dart';
import '../../../../components/inputs.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  late String _name;

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.put(RegisterController());

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(context.mdPadding),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  Assets.images.logo.path,
                  height: 120.0,
                  width: 120.0,
                ),
                SizedBox(height: context.xlPadding),
                VText(
                  "Sign up to Notd",
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: context.xlPadding),
                VFormInput(
                  keyboardType: TextInputType.emailAddress,
                  label: 'Email',
                  hint: 'email@yourdomain.com',
                  initialValue: kDebugMode ? 'demo2@gmail.com' : null,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email must not be empty';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                SizedBox(height: context.mdPadding),
                VFormInput(
                  keyboardType: TextInputType.emailAddress,
                  label: 'Name',
                  hint: 'John Doe',
                  initialValue: kDebugMode ? 'John Doe' : null,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Name must not be empty';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                SizedBox(height: context.mdPadding),
                Obx(() => VFormInput(
                      obscure: controller.obscureText.value,
                      keyboardType: TextInputType.emailAddress,
                      label: 'Password',
                      hint: '***',
                      initialValue: kDebugMode ? 'admin123' : null,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password must not be empty';
                        }
                        _password = value;
                        return null;
                      },
                      onSaved: (String? value) {
                        _password = value!;
                      },
                      suffixIcon: IconButton(
                        onPressed: controller.toggleObscure,
                        icon: Icon(
                          controller.obscureText.isTrue
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Colors.white,
                        ),
                      ),
                    )),
                SizedBox(height: context.mdPadding),
                Obx(() => VFormInput(
                      obscure: controller.obscureConfirmationText.value,
                      keyboardType: TextInputType.emailAddress,
                      label: 'Confirmation Password',
                      hint: '***',
                      initialValue: kDebugMode ? 'admin123' : null,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password must not be empty';
                        }

                        if (_password != value) {
                          return 'Confirmation password is not the same';
                        }
                        return null;
                      },
                      suffixIcon: IconButton(
                        onPressed: controller.toggleConfirmationObscure,
                        icon: Icon(
                          controller.obscureText.isTrue
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Colors.white,
                        ),
                      ),
                    )),
                SizedBox(height: context.lgPadding),
                PrimaryButton(
                  'Create Account',
                  onTap: () async {
                    final FormState form = _formKey.currentState!;
                    if (!form.validate()) return;
                    form.save();
                    controller.submit(_email, _name, _password);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
