import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/core/widgets/buttons/full_width_btn.dart';

deleteDialog(BuildContext context, String title, String subTitle, String label1,
        String label2, Function f1, Function f2) =>
    AwesomeDialog(
        context: context,
        animType: AnimType.scale,
        dialogType: DialogType.noHeader,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                title, //
                style: const TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.smallText + 2,
                    color: AppColors.smallText,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subTitle, //
                style: const TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.smallText + 2,
                  color: AppColors.smallText,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: FullWidthBtn(
                  label: label1,
                  callBack: () {
                    f1.call();
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: FullWidthBtn(
                  label: label2,
                  textColor: AppColors.smallText,
                  callBack: () {
                    f2.call();
                  },
                  bg: AppColors.bgSendMessage,
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ));
