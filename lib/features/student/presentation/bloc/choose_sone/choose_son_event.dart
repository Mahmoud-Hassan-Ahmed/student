part of 'choose_son_bloc.dart';

abstract class ChooseSonEvent extends Equatable {
  const ChooseSonEvent();

  @override
  List<Object> get props => [];
}

class ChooseSonDoneEvent extends ChooseSonEvent {
  final int index;

  const ChooseSonDoneEvent({required this.index});
}

class UnChooseSonDoneEvent extends ChooseSonEvent {}
