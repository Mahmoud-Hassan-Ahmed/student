import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class CardParentWidget extends StatelessWidget {
  const CardParentWidget({super.key, this.callBack, this.border = false});
  final Function? callBack;
  final bool border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack != null
          ? () {
              callBack!.call();
            }
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: border ? const BorderSide() : BorderSide.none),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'ولي الأمر',
                      style: TextStyle(
                          fontSize: AppFontSize.hintText,
                          color: AppColors.smallText,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'صلة القرابة',
                      style: TextStyle(
                        fontSize: AppFontSize.hintText - 3,
                        color: AppColors.smallText,
                        fontFamily: 'Cairo',
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/parent.png'),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
