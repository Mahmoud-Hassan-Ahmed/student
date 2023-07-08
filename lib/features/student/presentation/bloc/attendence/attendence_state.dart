part of 'attendence_bloc.dart';

abstract class AttendenceState extends Equatable {
  const AttendenceState();

  @override
  List<Object> get props => [];
}

class AttendenceInitial extends AttendenceState {}

class ChooseAttendenceState extends AttendenceState {
  final int index;
  static int count = 0;
  const ChooseAttendenceState(this.index);
  @override
  List<Object> get props => [count++];
}
