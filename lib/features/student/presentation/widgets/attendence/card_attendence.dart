import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/dialog/delete.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class CardAttendenceWidget extends StatelessWidget {
  const CardAttendenceWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5.7,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          deleteDialog(
                              context,
                              'حذف طلب الغياب',
                              'هل انت متأكد انك تريد حذف الطلب',
                              'نعم',
                              'لا', () {
                            Navigator.pop(context);
                          }, () {
                            Navigator.pop(context);
                          }).show();
                        },
                        icon: SvgPicture.asset('assets/icons/delete.svg')),
                    const Text(''),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          backgroundColor: index == 0
                              ? AppColors.orange
                              : const Color(0xFF5B5C5B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              15,
                            ), // Adjust the radius value as needed
                          ),
                        ),
                        child: const Text(
                          "مد الاجازة",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText + 3,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '6-11-2022',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintText,
                                color: AppColors.smallText),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'من',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintText,
                                color: AppColors.smallText),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '6-11-2022',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintText,
                                color: AppColors.smallText),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'حتي',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintText,
                                color: AppColors.smallText),
                          )
                        ],
                      ),
                      Text(
                        'نوع الرحلة : الكل',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: AppFontSize.hintText,
                            color: AppColors.smallText),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  index == 0
                      ? 'assets/images/note.png'
                      : 'assets/images/note_dark.png',
                  width: 80,
                  height: 80,
                )
              ],
            ),
          )),
    );
  }
}
