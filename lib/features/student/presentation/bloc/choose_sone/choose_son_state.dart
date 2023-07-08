part of 'choose_son_bloc.dart';

abstract class ChooseSonState extends Equatable {
  const ChooseSonState();

  @override
  List<Object> get props => [];
}

class ChooseSonInitial extends ChooseSonState {}

class ChooseSonDoneState extends ChooseSonState {
  final int index;

  const ChooseSonDoneState(this.index);
}

class UnChooseSonDoneState extends ChooseSonState {}
