import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'post_trip_event.dart';
part 'post_trip_state.dart';

class PostTripBloc extends Bloc<PostTripEvent, PostTripState> {
  PostTripBloc() : super(PostTripInitial()) {
    on<PostTripEvent>((event, emit) {
      if (event is ToggleExpandedEvent) {
        emit(ToggleExpandedState(!event.isOpen));
      }
    });
  }

  static PostTripBloc get(BuildContext context) =>
      BlocProvider.of<PostTripBloc>(context);
}
