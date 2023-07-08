import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class HorizontalWidget extends StatelessWidget {
  const HorizontalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: const EdgeInsets.all(4),
        height: MediaQuery.of(context).size.height / 15,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: <Widget>[
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: AppColors.orange,
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: Colors.white),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: Colors.white),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
                const SizedBox(
                  width: 10,
                ),
                ActionChip(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    label: Column(
                      children: [
                        Text(
                          'الاحد',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        ),
                        Text(
                          '18/11/2022',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText,
                              color: AppColors.smallText),
                        )
                      ],
                    ),
                    onPressed: () {
                      // update board with selection
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
