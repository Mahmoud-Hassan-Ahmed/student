part of 'calendar_bloc.dart';

abstract class CalendarState extends Equatable {
  const CalendarState();

  @override
  List<Object> get props => [];
}

class CalendarInitial extends CalendarState {}

class OnDaySelectedState extends CalendarState {
  final DateTime selectedDay;
  final DateTime focusDay;

  const OnDaySelectedState({required this.selectedDay, required this.focusDay});
  @override
  List<Object> get props => [selectedDay, focusDay];
}

class OnRangeSelectedState extends CalendarState {
  final DateTime selectedDay;
  final DateTime? start;
  final DateTime? end;

  const OnRangeSelectedState(
      {required this.selectedDay, required this.start, required this.end});
}

class OnPageChangedState extends CalendarState {
  final DateTime focusedDay;

  const OnPageChangedState(this.focusedDay);
  @override
  // TODO: implement props
  List<Object> get props => [focusedDay];
}
