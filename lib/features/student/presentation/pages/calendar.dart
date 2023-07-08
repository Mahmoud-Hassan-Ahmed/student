import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/core/widgets/appbar/appbar_callender.dart';
import 'package:student/core/widgets/buttons/full_width_btn.dart';
import 'package:student/core/dialog/done.dart';
import 'package:student/features/student/presentation/bloc/calendar/calendar_bloc.dart';
import 'package:student/features/student/presentation/widgets/calender/body_calendar.dart';
import 'package:student/features/student/presentation/widgets/calender/calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalendarBloc(),
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: FullWidthBtn(
              label: 'إرسال الطلب',
              callBack: () {
                dilaogDone(
                    context, 'تم أسأل الطلب بنجاح', 'الرجوع لطلبات الغياب', () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                }).show();
              }),
        ),
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                // pinned: true,
                // floating: false,
                delegate: AppBarCalendar(
                    context: context,
                    callBack: () {},
                    callendar: const CalendarWidget())),
            const SliverFillRemaining(
                // hasScrollBody: true,
                child: CalendarBodyWidget())
          ],
        ),
      ),
    );
  }
}
