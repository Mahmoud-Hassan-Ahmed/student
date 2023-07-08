import 'dart:math';

import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class AppBarCalendar extends SliverPersistentHeaderDelegate {
  final BuildContext context;
  final Function callBack;
  final Widget callendar;
  AppBarCalendar(
      {required this.context, required this.callBack, required this.callendar});

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
            color: AppColors.smallTextColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                "طلب غياب",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.titleFont - 4),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
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
              top: (MediaQuery.of(context).size.height / 4) / 1.5,
              left: 10,
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 3,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: callendar,
              )),
        ],
      ),
    );
  }

  @override
  double get maxExtent =>
      (MediaQuery.of(context).size.height / 3) +
      ((MediaQuery.of(context).size.height / 3) / 2);

  @override
  double get minExtent =>
      (MediaQuery.of(context).size.height / 3) +
      ((MediaQuery.of(context).size.height / 3) / 2);

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
