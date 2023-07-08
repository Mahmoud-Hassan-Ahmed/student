import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';

class BodyTrackingWidget extends StatelessWidget {
  const BodyTrackingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          width: double.infinity,
          color: AppColors.bgSendMessage,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset('assets/icons/mapicon.svg'),
                ),
              )
            ],
          ),
        )),
        Card(
          elevation: 6.0,
          color: Colors.green,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 14),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  children: [
                    const Text('الباص متجه إلي المنزل',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: AppFontSize.hintFormField,
                            color: Colors.green)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'رحلة العودة للمنزل',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintText,
                              color: AppColors.smallText),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset('assets/icons/mapmarker.svg'),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'الوقت المتبقي 6د',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: AppFontSize.hintFormField,
                                  color: AppColors.smallText),
                            ),
                            Icon(Icons.alarm)
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              '2.0 كم',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: AppFontSize.hintFormField,
                                  color: AppColors.smallText),
                            ),
                            SvgPicture.asset(
                              'assets/icons/distance_d.svg',
                              color: AppColors.smallText,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                )),
          ),
        )
      ],
    );
  }
}
