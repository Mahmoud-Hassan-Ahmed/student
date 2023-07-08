import 'dart:math';

import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/dialog/exit_dailog.dart';
import 'package:student/core/helper/AppUtils.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/features/student/presentation/pages/view_profile.dart';

class AppBarMore extends SliverPersistentHeaderDelegate {
  final BuildContext context;
  final Function callBack;
  AppBarMore({required this.context, required this.callBack});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var topBar = Positioned(
      top: -25,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_home_bar.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.titleFont - 4),
              ),
            ),
            Positioned(
              top: 75,
              right: 10,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
    return SizedBox(
      height: max(maxExtent - shrinkOffset, minExtent),
      child: Stack(
        fit: StackFit.loose,
        children: [
          topBar,
          Positioned(
              top: (MediaQuery.of(context).size.height / 4) / 1.7,
              left: (MediaQuery.of(context).size.width / 3) / 4,
              width: (MediaQuery.of(context).size.width / 3) * 2.5,
              height: (MediaQuery.of(context).size.height / 4),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                'اسم الطالب',
                                style: TextStyle(
                                  fontSize: AppFontSize.hintFormField,
                                  fontFamily: 'Cairo',
                                  color: AppColors.smallText,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                'assets/images/user2.png',
                                height: 50,
                                width: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: .5,
                        indent: 10,
                        color: AppColors.smallText,
                        endIndent: 10,
                      ),
                      Expanded(
                          flex: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      exitDialog(context).show();
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/exit.svg'),
                                        const Text(
                                          ' تسجيل خروج',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintFormField,
                                            color: AppColors.smallText,
                                            fontFamily: 'Cairo',
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                              FDottedLine(
                                color: Colors.black,
                                height: 50.0,
                                strokeWidth: 0.5,
                                space: 0,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      AppUtils.pushTo(
                                          context, const ViewProfilePage());
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/profile.svg'),
                                        const Text(
                                          'الملف الشخصي',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintFormField,
                                            color: AppColors.smallText,
                                            fontFamily: 'Cairo',
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ))
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }

  @override
  double get maxExtent =>
      (MediaQuery.of(context).size.height / 4) +
      ((MediaQuery.of(context).size.height / 5.8));

  @override
  double get minExtent =>
      (MediaQuery.of(context).size.height / 4) +
      ((MediaQuery.of(context).size.height / 5.8));

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
