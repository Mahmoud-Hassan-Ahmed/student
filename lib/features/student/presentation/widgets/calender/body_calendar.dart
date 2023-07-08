import 'package:flutter/material.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:textfield_tags/textfield_tags.dart';

class CalendarBodyWidget extends StatelessWidget {
  const CalendarBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextfieldTagsController controller = TextfieldTagsController();
    return ListView(
      children: [
        const Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'نوع الرحلة',
            textAlign: TextAlign.right,
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: AppColors.smallText),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 4,
                  backgroundColor: AppColors.bgSendMessage,
                ),
                onPressed: () {},
                child: const Text(
                  'ذهاب فقط',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintText,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 4,
                  backgroundColor: AppColors.bgSendMessage,
                ),
                onPressed: () {},
                child: const Text(
                  'ذهاب فقط',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintText,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 4,
                  backgroundColor: AppColors.smallTextColor,
                ),
                onPressed: () {},
                child: const Text(
                  'ذهاب وعودة',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintText,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))
          ],
        ),
        const Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'سبب الغياب',
            textAlign: TextAlign.right,
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                color: AppColors.smallText),
          ),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: TextFieldTags(
            textfieldTagsController: controller,
            textSeparators: const [' ', ','],
            letterCase: LetterCase.normal,
            validator: (String tag) {
              return null;
            },
            inputfieldBuilder:
                (context, tec, fn, error, onChanged, onSubmitted) {
              return ((context, sc, tags, onTagDelete) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: tec,
                    focusNode: fn,
                    decoration: InputDecoration(
                      isDense: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.smallText,
                          width: 3.0,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.smallText,
                          width: 1.0,
                        ),
                      ),
                      hintText: controller.hasTags ? '' : "ادخل سبب الغياب...",
                      errorText: error,
                      prefixIconConstraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.74),
                      prefixIcon: tags.isNotEmpty
                          ? SingleChildScrollView(
                              controller: sc,
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: tags.map((String tag) {
                                return Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    color: AppColors.orange,
                                  ),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 5.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        child: Text(
                                          tag,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                        onTap: () {
                                          //print("$tag selected");
                                        },
                                      ),
                                      const SizedBox(width: 4.0),
                                      InkWell(
                                        child: const Icon(
                                          Icons.cancel,
                                          size: 14.0,
                                          color: Color.fromARGB(
                                              255, 233, 233, 233),
                                        ),
                                        onTap: () {
                                          onTagDelete(tag);
                                        },
                                      )
                                    ],
                                  ),
                                );
                              }).toList()),
                            )
                          : null,
                    ),
                    onChanged: onChanged,
                    onSubmitted: onSubmitted,
                  ),
                );
              });
            },
          ),
        ),
      ],
    );
  }
}
