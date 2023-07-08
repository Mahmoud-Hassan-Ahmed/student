import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/helper/AppUtils.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/features/student/presentation/pages/home_page.dart';
import 'package:student/features/student/presentation/pages/massage_page.dart';
import 'package:student/features/student/presentation/pages/more_page.dart';
import 'package:student/features/student/presentation/pages/post_trip.dart';
import 'package:student/features/student/presentation/pages/tracking_page.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key, required this.indexActive});
  final int indexActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 10,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  if (indexActive != 4) {
                    AppUtils.pushTo(context, const MorePage());
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/menuleft.svg',
                      color: indexActive == 4 ? AppColors.smallTextColor : null,
                    ),
                    Text(
                      'المزيد',
                      style: TextStyle(
                          fontSize: AppFontSize.smallText,
                          color: indexActive == 4
                              ? AppColors.smallTextColor
                              : AppColors.hint,
                          fontFamily: 'Cairo'),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (indexActive != 1) {
                    AppUtils.pushTo(context, const MessagesPage());
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/messages.svg',
                      color: indexActive == 1 ? AppColors.smallTextColor : null,
                    ),
                    Text(
                      'التواصل',
                      style: TextStyle(
                          fontSize: AppFontSize.smallText,
                          color: indexActive == 1
                              ? AppColors.smallTextColor
                              : AppColors.hint,
                          fontFamily: 'Cairo'),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (indexActive != 2) {
                    AppUtils.pushTo(context, const TrackingPage());
                  }
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.height / 10,
                  decoration: const BoxDecoration(
                    color: AppColors.orange,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            'assets/images/logo-icon.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text('التتبع',
                              style: TextStyle(
                                  fontSize: AppFontSize.smallText + 2,
                                  color: Colors.white,
                                  fontFamily: 'Cairo')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (indexActive != 3) {
                    AppUtils.pushTo(context, const PostTripPage());
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/timerestore.svg',
                      color: indexActive == 3 ? AppColors.smallTextColor : null,
                    ),
                    Text(
                      'رحلات سابقة',
                      style: TextStyle(
                          fontSize: AppFontSize.smallText,
                          color: indexActive == 3
                              ? AppColors.smallTextColor
                              : AppColors.hint,
                          fontFamily: 'Cairo'),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (indexActive != 0) {
                    AppUtils.pushToAnReplace(context, const HomePage());
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: indexActive == 0
                          ? AppColors.smallTextColor
                          : AppColors.bgSendMessage,
                    ),
                    Text(
                      'الرئيسية',
                      style: TextStyle(
                          fontSize: AppFontSize.smallText,
                          color: indexActive == 0
                              ? AppColors.smallTextColor
                              : AppColors.hint,
                          fontFamily: 'Cairo'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
