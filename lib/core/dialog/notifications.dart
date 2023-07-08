import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:student/core/helper/AppUtils.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

notificationgDialog(BuildContext context) => AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.noHeader,
    body: Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              'إعدادات الاشعارات',
              style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.smallText + 2,
                  color: AppColors.smallText,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            CheckboxListTile(
              tileColor: Colors.white,
              value: true,
              onChanged: (value) {
                AppUtils.indexNotificationsDialog = 1;
                Navigator.pop(context);
              },
              controlAffinity: ListTileControlAffinity.leading,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              checkColor: AppUtils.indexNotificationsDialog == 1
                  ? AppColors.orange
                  : Colors.white,
              activeColor: Colors.white,
              title: const Text(
                'الافتراضي',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.hintText,
                    color: AppColors.smallText),
                textAlign: TextAlign.left,
              ),
            ),
            const Divider(
              height: 5,
              indent: 10,
              endIndent: 10,
            ),
            CheckboxListTile(
              value: true,
              onChanged: (value) {
                AppUtils.indexNotificationsDialog = 2;
                Navigator.pop(context);
              },
              controlAffinity: ListTileControlAffinity.leading,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              activeColor: Colors.white,
              checkColor: AppUtils.indexNotificationsDialog == 2
                  ? AppColors.orange
                  : Colors.white,
              title: const Text(
                'صامت',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.hintText,
                    color: AppColors.smallText),
                textAlign: TextAlign.left,
              ),
            ),
            const Divider(
              height: 5,
              indent: 10,
              endIndent: 10,
            ),
            CheckboxListTile(
              value: true,
              onChanged: (value) {
                AppUtils.indexNotificationsDialog = 3;
                Navigator.pop(context);
              },
              controlAffinity: ListTileControlAffinity.leading,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              activeColor: Colors.white,
              checkColor: AppUtils.indexNotificationsDialog == 3
                  ? AppColors.orange
                  : Colors.white,
              title: const Text(
                'نغمة الهاتف',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.hintText,
                    color: AppColors.smallText),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    ));
