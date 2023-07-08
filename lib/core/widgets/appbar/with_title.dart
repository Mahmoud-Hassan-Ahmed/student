import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class AppBarWithTitle extends SliverPersistentHeaderDelegate {
  late double minTopBarHeight = MediaQuery.of(context).size.height / 9;
  late double maxTopBarHeight = MediaQuery.of(context).size.height / 6;
  final String title;
  final String? bg;
  final BuildContext context;
  final Function callBack;

  AppBarWithTitle(
      {required this.context,
      required this.title,
      required this.callBack,
      this.bg});

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
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
            color: AppColors.smallTextColor,
            image: bg != null
                ? DecorationImage(
                    image: AssetImage(bg ?? ''),
                    fit: BoxFit.cover,
                  )
                : null,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(26),
              bottomRight: Radius.circular(26),
            )),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                    callBack.call();
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
      height: MediaQuery.of(context).size.height / 6,
      child: Stack(
        fit: StackFit.loose,
        children: [
          topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent => MediaQuery.of(context).size.height / 6;

  @override
  double get minExtent => MediaQuery.of(context).size.height / 6;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
