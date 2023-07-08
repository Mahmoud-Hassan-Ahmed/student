import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/core/dialog/choose_lang.dart';
import 'package:student/core/dialog/notifications.dart';
import 'package:student/core/helper/AppUtils.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/core/widgets/appbar/appbar_more.dart';
import 'package:student/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:student/features/student/presentation/pages/about_page.dart';
import 'package:student/features/student/presentation/pages/help.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBarWidget(indexActive: 4),
      backgroundColor: AppColors.recieveColorMessage,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarMore(context: context, callBack: () {})),
          SliverFillRemaining(
            child: ListView(
              // physics: PageScrollPhysics(),
              // physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              children: [
                GestureDetector(
                  onTap: () {
                    notificationgDialog(context).show();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/back.svg'),
                        const Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'إعدادات الإشعارات',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintFormField + 1,
                                color: AppColors.smallText),
                          ),
                        )),
                        SvgPicture.asset('assets/icons/notificationline.svg'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    chooseLangDialog(context).show();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/back.svg'),
                        const Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'إعدادات اللغة',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintFormField + 1,
                                color: AppColors.smallText),
                          ),
                        )),
                        SvgPicture.asset('assets/icons/settingsline.svg')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/back.svg'),
                      const Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          'سياسة الخصوصية',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintFormField + 1,
                              color: AppColors.smallText),
                        ),
                      )),
                      SvgPicture.asset('assets/icons/verified.svg'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/back.svg'),
                        const Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'الدعم الفني',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintFormField + 1,
                                color: AppColors.smallText),
                          ),
                        )),
                        SvgPicture.asset('assets/icons/whatsapp.svg'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    AppUtils.pushTo(context, const HelpCahtPage());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/back.svg'),
                        const Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'احصل على مساعدة',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintFormField + 1,
                                color: AppColors.smallText),
                          ),
                        )),
                        SvgPicture.asset('assets/icons/help.svg')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/back.svg'),
                      const Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          'تقييم التطبيق',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintFormField + 1,
                              color: AppColors.smallText),
                        ),
                      )),
                      SvgPicture.asset('assets/icons/star.svg')
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    AppUtils.pushTo(context, const AboutPage());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/back.svg'),
                        const Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'عن التطبيق',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintFormField + 1,
                                color: AppColors.smallText),
                          ),
                        )),
                        SvgPicture.asset('assets/icons/about.svg')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
