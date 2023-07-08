import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      if (event is ToggleHidePasswordEvent) {
        emit(ToggleHidePasswordState(!event.state));
      }
    });
  }
  static LoginBloc get(BuildContext context) => BlocProvider.of(context);
}
