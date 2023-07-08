import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'attendence_event.dart';
part 'attendence_state.dart';

class AttendenceBloc extends Bloc<AttendenceEvent, AttendenceState> {
  AttendenceBloc() : super(AttendenceInitial()) {
    on<AttendenceEvent>((event, emit) {
      if (event is ChooseAttendenceEvent) {
        emit(ChooseAttendenceState(event.index));
      }
    });
  }
  static AttendenceBloc get(BuildContext context) => BlocProvider.of(context);
}
