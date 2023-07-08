import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/core/theme/colors.dart';
import 'package:student/core/theme/font_size.dart';
import 'package:student/features/student/presentation/bloc/calendar/calendar_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CalendarFormat calendarFormat = CalendarFormat.week;
    RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;
    DateTime focusedDay = DateTime.now();
    DateTime? selectedDay;
    DateTime? rangeStart;
    DateTime? rangeEnd;
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        if (state is OnDaySelectedState) {
          selectedDay = state.selectedDay;
          focusedDay = state.focusDay;
          rangeStart = null;
          rangeEnd = null;
          rangeSelectionMode = RangeSelectionMode.toggledOff;
        } else if (state is OnRangeSelectedState) {
          selectedDay = null;
          focusedDay = state.selectedDay;
          rangeStart = state.start;
          rangeEnd = state.end;
          rangeSelectionMode = RangeSelectionMode.toggledOn;
        } else if (state is OnPageChangedState) {
          focusedDay = state.focusedDay;
        }
        return Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'حدد أيام الغياب علي التقويم',
              style: TextStyle(
                  fontSize: AppFontSize.smallText + 2,
                  fontFamily: 'Cairo',
                  color: AppColors.smallText),
            ),
            const Expanded(child: Text('')),
            TableCalendar(
              rowHeight: 150,
              daysOfWeekVisible: false,
              calendarStyle: const CalendarStyle(
                rangeHighlightScale: 2.24,
              ),
              calendarBuilders: CalendarBuilders(
                todayBuilder: (context, date, events) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(child: Text('')),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              '${date.day}',
                              style: const TextStyle(
                                  color: AppColors.smallTextColor,
                                  fontSize: AppFontSize.hintFormField,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              _getDayName(date),
                              style: const TextStyle(
                                  fontSize: AppFontSize.smallText,
                                  color: AppColors.smallTextColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.smallTextColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Expanded(child: Text(''))
                    ],
                  );
                },
                rangeStartBuilder: (context, date, focusedDay) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(child: Text('')),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              '${date.day}',
                              style: const TextStyle(
                                  color: AppColors.smallTextColor,
                                  fontSize: AppFontSize.hintFormField,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              _getDayName(date),
                              style: const TextStyle(
                                  fontSize: AppFontSize.smallText,
                                  color: AppColors.smallTextColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.smallTextColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Expanded(child: Text(''))
                    ],
                  );
                },
                rangeEndBuilder: (context, date, focusedDay) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(child: Text('')),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              '${date.day}',
                              style: const TextStyle(
                                  color: AppColors.smallTextColor,
                                  fontSize: AppFontSize.hintFormField,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              _getDayName(date),
                              style: const TextStyle(
                                  fontSize: AppFontSize.smallText,
                                  color: AppColors.smallTextColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.smallTextColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Expanded(child: Text(''))
                    ],
                  );
                },
                defaultBuilder: (context, date, events) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(child: Text('')),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              '${date.day}',
                              style: const TextStyle(
                                  color: AppColors.smallText,
                                  fontSize: AppFontSize.hintFormField,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              _getDayName(date),
                              style: const TextStyle(
                                  fontSize: AppFontSize.smallText,
                                  color: AppColors.hint),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Expanded(child: Text(''))
                    ],
                  );
                },
                withinRangeBuilder: (context, date, isWithinRange) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(child: Text('')),
                    Container(
                      color: Colors.blue.shade100,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            '${date.day}',
                            style: const TextStyle(
                                color: AppColors.smallTextColor,
                                fontSize: AppFontSize.hintFormField,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            _getDayName(date),
                            style: const TextStyle(
                                fontSize: AppFontSize.smallText,
                                color: AppColors.smallTextColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(187, 222, 251, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Expanded(child: Text(''))
                  ],
                ),
              ),
              // rowHeight: 100,
              headerVisible: false,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: focusedDay,

              selectedDayPredicate: (day) => isSameDay(selectedDay, day),
              rangeStartDay: rangeStart,
              rangeEndDay: rangeEnd,
              calendarFormat: calendarFormat,
              rangeSelectionMode: rangeSelectionMode,
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(selectedDay, selectedDay)) {
                  CalendarBloc.get(context).add(OnDaySelectedEvent(
                      selectedDay: selectedDay, focusDay: focusedDay));
                }
              },
              onRangeSelected: (start, end, focusedDay) {
                CalendarBloc.get(context).add(OnRangeSelectedEvent(
                    selectedDay: focusedDay, start: start, end: end));
              },
              onFormatChanged: (format) {},
              onPageChanged: (focusedDay) {
                CalendarBloc.get(context).add(OnPageChangedEvent(focusedDay));
              },
            )
          ],
        );
      },
    );
  }

  String _getDayName(DateTime date) {
    final List<String> weekdays = [
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
      'Sun'
    ];
    return weekdays[date.weekday - 1];
  }
}
