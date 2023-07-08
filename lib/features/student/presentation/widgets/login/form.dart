import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/core/helper/AppUtils.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/core/widgets/buttons/full_width_btn.dart';
import 'package:student/features/student/presentation/bloc/login/login_bloc.dart';
import 'package:student/features/student/presentation/pages/home_page.dart';

class FormLogIn extends StatelessWidget {
  const FormLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    var passwordVisible = false;
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        if (state is ToggleHidePasswordState) {
          passwordVisible = state.state;
        }
        return Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              "تسجيل الدخول",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.orange,
                  fontSize: AppFontSize.titleFont,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo'),
            ),
            const SizedBox(
              height: 15,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'اسم المستخدم/رقم الجول',
                            labelStyle: const TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintFormField),
                            prefixIcon: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/username.svg',
                                ),
                              ],
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 12.0),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a username or phone number';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          obscureText: !passwordVisible,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'كلمة المرور',
                            labelStyle: const TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintFormField),
                            prefixIcon: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: SvgPicture.asset(
                                    'assets/icons/password.svg',
                                  ),
                                ),
                              ],
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                LoginBloc.get(context).add(
                                    ToggleHidePasswordEvent(passwordVisible));
                              },
                              child: Icon(
                                passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: 18,
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 12.0),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'إسترجاع كلمة المرور',
                            style: TextStyle(
                              fontSize: AppFontSize.hintText,
                              fontFamily: 'Cairo',
                              color: AppColors.hint,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      FullWidthBtn(
                        label: 'الدخول',
                        callBack: () {
                          AppUtils.pushTo(context, const HomePage());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
