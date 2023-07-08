import 'dart:math';

import 'package:flutter/material.dart';

class AppBarWithLogo extends SliverPersistentHeaderDelegate {
  final BuildContext context;
  final String logo;
  final String? bgLogo;

  late double minTopBarHeight = (MediaQuery.of(context).size.height / 3) / 2;
  late double maxTopBarHeight = MediaQuery.of(context).size.height / 3;

  AppBarWithLogo({required this.context, required this.logo, this.bgLogo});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var shrinkFactor = min(1, shrinkOffset / (maxExtent - minExtent));

    var topBar = Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height:
            max(maxTopBarHeight * (1 - shrinkFactor * 1.45), minTopBarHeight),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bgLogo ?? 'assets/images/bg_login_bar.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo, //'assets/images/logo.png'
              width: MediaQuery.of(context).size.width / 2,
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
          if (shrinkFactor <= 0.5) topBar,
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
            ),
          ),
          if (shrinkFactor > 0.5) topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent => (MediaQuery.of(context).size.height / 3);

  @override
  double get minExtent => (MediaQuery.of(context).size.height / 3) / 2;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
