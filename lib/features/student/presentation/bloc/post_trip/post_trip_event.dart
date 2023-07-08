part of 'post_trip_bloc.dart';

abstract class PostTripEvent extends Equatable {
  const PostTripEvent();

  @override
  List<Object> get props => [];
}

class ToggleExpandedEvent extends PostTripEvent {
  final bool isOpen;

  const ToggleExpandedEvent(this.isOpen);
  @override
  List<Object> get props => [isOpen];
}
