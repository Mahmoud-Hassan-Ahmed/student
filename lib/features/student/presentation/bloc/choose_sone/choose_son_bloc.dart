import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'choose_son_event.dart';
part 'choose_son_state.dart';

class ChooseSonBloc extends Bloc<ChooseSonEvent, ChooseSonState> {
  ChooseSonBloc() : super(ChooseSonInitial()) {
    on<ChooseSonEvent>((event, emit) {
      if (event is ChooseSonDoneEvent) {
        emit(ChooseSonDoneState(event.index));
      } else if (event is UnChooseSonDoneEvent) {
        emit(UnChooseSonDoneState());
      }
    });
  }
  static ChooseSonBloc get(BuildContext context) => BlocProvider.of(context);
}
