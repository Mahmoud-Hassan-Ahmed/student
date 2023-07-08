part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginInitial extends LoginState {}

class ToggleHidePasswordState extends LoginState {
  final bool state;

  ToggleHidePasswordState(this.state);
  @override
  List<Object?> get props => [state];
}
