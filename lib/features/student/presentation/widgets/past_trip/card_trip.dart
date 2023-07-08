import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/features/student/presentation/bloc/post_trip/post_trip_bloc.dart';

class CardTripWidget extends StatelessWidget {
  const CardTripWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var expanded = false;
    return BlocBuilder<PostTripBloc, PostTripState>(
      builder: (context, state) {
        if (state is ToggleExpandedState) {
          expanded = state.isOpen;
        }
        return Padding(
            padding: const EdgeInsets.all(20),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              elevation: 10,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ExpansionTile(
                      childrenPadding: EdgeInsets.zero,
                      tilePadding: const EdgeInsets.only(
                          left: 7, top: 0, right: 0, bottom: 0),
                      trailing: RotationTransition(
                        turns: AlwaysStoppedAnimation(expanded ? -0.25 : 0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: !expanded ? AppColors.smallText : Colors.white,
                        ),
                      ),
                      onExpansionChanged: (value) {
                        PostTripBloc.get(context)
                            .add(ToggleExpandedEvent(expanded));
                      },
                      backgroundColor: AppColors.smallTextColor,
                      collapsedBackgroundColor: Colors.white,
                      title: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'رحلة الذهاب إلي المدرسة',
                                        style: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: AppFontSize.hintText,
                                            fontWeight: FontWeight.bold,
                                            color: expanded
                                                ? Colors.white
                                                : AppColors.smallText),
                                      ),
                                      Icon(
                                        Icons.location_on,
                                        color: expanded
                                            ? Colors.white
                                            : AppColors.smallText,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '0 MIN',
                                            style: TextStyle(
                                                fontFamily: 'Cairo',
                                                fontSize:
                                                    AppFontSize.hintText - 2,
                                                color: expanded
                                                    ? AppColors.bgSendMessage
                                                    : AppColors.smallText),
                                          ),
                                          SvgPicture.asset(
                                            expanded
                                                ? 'assets/icons/time.svg'
                                                : 'assets/icons/time_dark.svg',
                                          ),
                                          // const Icon(
                                          //   Icons.location_searching,
                                          //   color: AppColors.bgSendMessage,
                                          // ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '0 KM',
                                            style: TextStyle(
                                                fontFamily: 'Cairo',
                                                fontSize:
                                                    AppFontSize.hintText - 2,
                                                color: expanded
                                                    ? AppColors.bgSendMessage
                                                    : AppColors.smallText),
                                          ),
                                          SvgPicture.asset(
                                            expanded
                                                ? 'assets/icons/distance.svg'
                                                : 'assets/icons/distance_dark.svg',
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Transform.scale(
                                scale: 1.5,
                                child: Container(
                                  color: AppColors.smallTextColor,
                                  padding: const EdgeInsets.only(
                                      right: 10, top: 10, bottom: 10),
                                  child: Transform.scale(
                                      scale: 0.5,
                                      child:
                                          Image.asset('assets/images/bus.png')),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'الطالب صعد الباص',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'الرحلة جارية',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock_green.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'الباص متجه إلي المنزل',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock_yellow.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'الباص متجه إلي المنزل',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock_yellow.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'الطالب صعد الباص',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'الرحلة انتهت',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock_red.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ));
      },
    );
  }
}
