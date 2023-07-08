import 'package:flutter/material.dart';
import 'package:student/core/dialog/done.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/core/widgets/buttons/full_width_btn.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CodeListWidget extends StatelessWidget {
  const CodeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          'assets/images/code.png',
          height: MediaQuery.of(context).size.height / 4,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                'تم إرسال كود التفعيل إلي',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.smallText + 1,
                    color: AppColors.smallText),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'تعديل',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: AppFontSize.hintText,
                          color: AppColors.smallTextColor,
                          fontWeight: FontWeight.bold),
                    )),
                const Text(
                  '+97647347674',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.hintFormField + 2,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const Center(
              child: Text(
                'أدخل كود التفعيل المكون من 4 أرقام ',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.hintFormField - 1,
                  color: AppColors.orange,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: FullWidthBtn(
                    label: 'تفعيل',
                    callBack: () {
                      dilaogDone(context, 'تم تغير كلمة المرور بنجاح',
                          'الرجوع للصفحة الرئيسية', () {
                        Navigator.pop(context);
                      }).show();
                    })),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Row(
                  children: [
                    Text(
                      '50 ثانية',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: AppFontSize.smallText + 1,
                          fontFamily: 'Cairo'),
                    ),
                    Icon(
                      Icons.alarm,
                      color: Colors.blueAccent,
                    )
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'إعادة إرسال',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: AppFontSize.smallText + 1),
                        )),
                    const Text(
                      'لم يصلك الكود؟',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.smallText + 1,
                          color: AppColors.smallText),
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
