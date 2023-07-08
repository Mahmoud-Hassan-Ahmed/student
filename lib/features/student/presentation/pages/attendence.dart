import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/core/helper/AppUtils.dart';
import 'package:student/core/widgets/appbar/appbar_attendence.dart';
import 'package:student/features/student/presentation/bloc/attendence/attendence_bloc.dart';
import 'package:student/features/student/presentation/pages/calendar.dart';
import 'package:student/features/student/presentation/widgets/attendence/card_attendence.dart';

class AttendencePage extends StatefulWidget {
  const AttendencePage({super.key});

  @override
  State<AttendencePage> createState() => _AttendencePageState();
}

class _AttendencePageState extends State<AttendencePage> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return BlocProvider(
      create: (context) => AttendenceBloc(),
      child: BlocBuilder<AttendenceBloc, AttendenceState>(
        builder: (context, state) {
          if (state is ChooseAttendenceState) {
            index = state.index;
          }
          return Scaffold(
            backgroundColor: Colors.white,
            body: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                    pinned: true,
                    floating: false,
                    delegate: AppBarAttendence(
                        context: context,
                        widget: CardAttendenceWidget(
                          index: index,
                        ))),
                SliverFillRemaining(
                  hasScrollBody: true,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      CardAttendenceWidget(
                        index: index,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                          onTap: () {
                            AppUtils.pushTo(context, const CalendarPage());
                          },
                          child: Image.asset(
                            'assets/images/add.png',
                            width: 200,
                            height: 200,
                          ))
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
