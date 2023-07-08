import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:student/core/helper/AppUtils.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/features/student/presentation/pages/change_password.dart';
import 'package:student/features/student/presentation/pages/edit_profile.dart';

class FormProfileWidget extends StatelessWidget {
  const FormProfileWidget({super.key, required this.enable});
  final bool enable;

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();

    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    return ListView(
      padding: const EdgeInsets.only(top: 5),
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 120,
                height: 120,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/add_image_pro.png',
                    ),
                    if (enable)
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                            onPressed: () {},
                            icon:
                                SvgPicture.asset('assets/icons/add_image.svg')),
                      )
                  ],
                ),
              ),
            ),
            if (!enable)
              Align(
                alignment: Alignment.topLeft,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                      onPressed: () {
                        AppUtils.pushTo(context, const EditProfile());
                      },
                      icon: SvgPicture.asset('assets/icons/edit.svg'),
                      label: const Text(
                        'تعديل',
                        style: TextStyle(color: Colors.red),
                      )),
                ),
              ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'اسم المستخدم ',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.smallText + 1,
                    color: AppColors.smallText),
              ),
              Container(
                color: Colors.white,
                height: 50,
                child: TextFormField(
                  enabled: enable,
                  controller: usernameController,
                  decoration: const InputDecoration(
                    hintText: 'اسم المستخدم ',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'رقم الجوال',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.smallText + 1,
                    color: AppColors.smallText),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400]!,
                    width: 1.0,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: InternationalPhoneNumberInput(
                  initialValue: PhoneNumber(
                    isoCode: Platform.localeName.split('_').last,
                  ),
                  isEnabled: enable,
                  inputDecoration:
                      const InputDecoration(border: InputBorder.none),
                  onInputChanged: (PhoneNumber number) {
                    // print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    // print(value);
                  },
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: const TextStyle(color: Colors.black),
                  // initialValue: number,
                  // textFieldController: controller,
                  formatInput: true,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  inputBorder: const OutlineInputBorder(),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'الاسم الكامل',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.smallText + 1,
                    color: AppColors.smallText),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: TextFormField(
                  enabled: enable,
                  controller: fullNameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'الاسم الكامل'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'البريد الالكتروني',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.smallText + 1,
                    color: AppColors.smallText),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: TextFormField(
                  enabled: enable,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'البريد الالكتروني'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'تحديد المدينة',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.smallText + 1,
                    color: AppColors.smallText),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: TextFormField(
                  controller: cityController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'تحديد المدينة'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'العنوان بالتفصيل',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.smallText + 1,
                    color: AppColors.smallText),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: TextFormField(
                  enabled: enable,
                  controller: addressController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'العنوان بالتفصيل'),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 3,
          color: Colors.grey,
          indent: 20,
          endIndent: 20,
        ),
        SizedBox(
          height: enable ? 80 : 20,
        ),
        if (!enable)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                AppUtils.pushTo(context, const ChangePasswordPagw());
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: AppColors.hint,
                  ),
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      'تغيير كلمة المرور',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintFormField + 1,
                          color: AppColors.smallText),
                    ),
                  )),
                  SvgPicture.asset('assets/icons/settingsline.svg')
                ],
              ),
            ),
          ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
