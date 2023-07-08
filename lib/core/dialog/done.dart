import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/core/widgets/buttons/full_width_btn.dart';

dilaogDone(BuildContext context, String title, String label, Function f) =>
    AwesomeDialog(
        context: context,
        animType: AnimType.scale,
        dialogType: DialogType.noHeader,
        showCloseIcon: true,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SvgPicture.asset(
                'assets/icons/done.svg',
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title, //
                style: const TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: AppFontSize.smallText + 2,
                  color: AppColors.orange,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: FullWidthBtn(
                  label: label, //
                  callBack: () {
                    f.call();
                  },
                  bg: AppColors.smallTextColor,
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ));
