import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

updateDialog(BuildContext context) => AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.noHeader,
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text(
            'لقد تم تحديث بيانات حسابك ',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.smallText + 2,
                color: AppColors.smallText,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
            height: 5,
            indent: 10,
            endIndent: 10,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              icon: const Icon(
                Icons.close,
                color: Colors.red,
              ),
              label: const Text(
                'إغلاق',
                style: TextStyle(
                    fontSize: AppFontSize.hintText,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              onPressed: () {
                // Handle button press
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
