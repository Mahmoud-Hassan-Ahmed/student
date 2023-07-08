import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

exitDialog(BuildContext context) => AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.noHeader,
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text(
            'تسجيل خروج',
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.smallText + 2,
                color: AppColors.smallText,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'هل انت متأكد من أنك تريد تسجيل الخروج',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: AppFontSize.smallText + 2,
              color: AppColors.smallText,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(AppColors.orange),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'تسجيل الخروج',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: AppFontSize.hintText - 2,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton.icon(
                    icon: SvgPicture.asset('assets/icons/Fail.svg'),
                    label: const Text(
                      'إلغاء',
                      style: TextStyle(
                        color: AppColors.smallTextColor,
                        fontSize: AppFontSize.hintText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ));
