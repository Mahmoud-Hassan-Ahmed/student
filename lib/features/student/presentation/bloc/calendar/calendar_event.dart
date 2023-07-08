part of 'calendar_bloc.dart';

abstract class CalendarEvent extends Equatable {
  const CalendarEvent();

  @override
  List<Object> get props => [];
}

class OnDaySelectedEvent extends CalendarEvent {
  final DateTime selectedDay;
  final DateTime focusDay;

  const OnDaySelectedEvent({required this.selectedDay, required this.focusDay});
  @override
  List<Object> get props => [selectedDay, focusDay];
}

class OnRangeSelectedEvent extends CalendarEvent {
  final DateTime selectedDay;
  final DateTime? start;
  final DateTime? end;

  const OnRangeSelectedEvent(
      {required this.selectedDay, required this.start, required this.end});
  @override
  List<Object> get props => [selectedDay];
}

class OnPageChangedEvent extends CalendarEvent {
  final DateTime focusedDay;

  const OnPageChangedEvent(this.focusedDay);
  @override
  // TODO: implement props
  List<Object> get props => [focusedDay];
}
