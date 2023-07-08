part of 'attendence_bloc.dart';

abstract class AttendenceEvent extends Equatable {
  const AttendenceEvent();

  @override
  List<Object> get props => [];
}

class ChooseAttendenceEvent extends AttendenceEvent {
  final int index;

  const ChooseAttendenceEvent(this.index);
}
