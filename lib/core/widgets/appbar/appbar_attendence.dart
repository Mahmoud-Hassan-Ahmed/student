import 'dart:math';

import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/features/student/presentation/bloc/attendence/attendence_bloc.dart';

class AppBarAttendence extends SliverPersistentHeaderDelegate {
  late double minTopBarHeight = MediaQuery.of(context).size.height / 4;
  late double maxTopBarHeight = MediaQuery.of(context).size.height / 3;
  final BuildContext context;
  final Widget? widget;
  AppBarAttendence({required this.context, this.widget});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var topBar = Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height: maxTopBarHeight,
        decoration: const BoxDecoration(
            color: AppColors.smallTextColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.smallTextColor,
                    )),
                const Expanded(
                  child: Text(
                    'طلبات الغياب',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: AppFontSize.smallText * 2,
                        color: Colors.white,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )),
              ],
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: DefaultTabController(
                length: 2,
                child: TabBar(
                  onTap: (value) {
                    AttendenceBloc.get(context)
                        .add(ChooseAttendenceEvent(value));
                  },
                  indicatorPadding: const EdgeInsets.only(left: 50),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  tabs: const [
                    Tab(
                        child: Text(
                      ' الطلبات الحالية ',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintFormField,
                          fontWeight: FontWeight.bold),
                    )),
                    Tab(
                        child: Text(
                      'الطلبات السابقة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintFormField,
                          fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
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
          if (widget != null)
            Positioned(
                top: (MediaQuery.of(context).size.height / 4),
                left: 0,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5.7,
                child: widget!)
        ],
      ),
    );
  }

  @override
  double get maxExtent =>
      maxTopBarHeight + (MediaQuery.of(context).size.height / 5.7) / 2;

  @override
  double get minExtent =>
      maxTopBarHeight + (MediaQuery.of(context).size.height / 5.7) / 2;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
