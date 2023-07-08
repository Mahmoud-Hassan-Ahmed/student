import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'يزن علي',
                      style: TextStyle(
                          fontSize: AppFontSize.hintText,
                          color: AppColors.smallText,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'ينبع- السعودية',
                      style: TextStyle(
                        fontSize: AppFontSize.hintText - 3,
                        color: AppColors.smallText,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    Text(
                      '12/12/2022',
                      style: TextStyle(
                        fontSize: AppFontSize.hintText - 3,
                        color: AppColors.smallText,
                        fontFamily: 'Cairo',
                      ),
                    )
                  ],
                ),
                Image.asset(
                  'assets/images/notifications.png',
                  height: 60,
                ),
              ],
            ),
          )),
    );
  }
}
