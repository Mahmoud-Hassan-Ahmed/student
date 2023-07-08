import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super(CalendarInitial()) {
    on<CalendarEvent>((event, emit) {
      if (event is OnDaySelectedEvent) {
        emit(OnDaySelectedState(
            selectedDay: event.selectedDay, focusDay: event.focusDay));
      } else if (event is OnRangeSelectedEvent) {
        emit(OnRangeSelectedState(
            selectedDay: event.selectedDay,
            start: event.start,
            end: event.end));
      } else if (event is OnPageChangedEvent) {
        emit(OnPageChangedState(event.focusedDay));
      }
    });
  }
  static CalendarBloc get(BuildContext context) => BlocProvider.of(context);
}
