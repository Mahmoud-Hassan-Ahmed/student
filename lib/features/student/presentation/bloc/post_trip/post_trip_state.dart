part of 'post_trip_bloc.dart';

abstract class PostTripState extends Equatable {
  const PostTripState();

  @override
  List<Object> get props => [];
}

class PostTripInitial extends PostTripState {}

class ToggleExpandedState extends PostTripState {
  final bool isOpen;

  const ToggleExpandedState(this.isOpen);
  @override
  List<Object> get props => [isOpen];
}
