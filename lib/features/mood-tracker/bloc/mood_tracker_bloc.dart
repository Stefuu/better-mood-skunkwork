import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'mood_tracker_events.dart';
import 'mood_tracker_state.dart';

class MoodTrackerBloc extends Bloc<MoodTrackerEvents, MoodTrackerState> {
  MoodTrackerBloc() : super(MoodTrackerStateInitial()) {
    on<MoodTrackerEventsSelect>(_selectMood);
  }

  FutureOr<void> _selectMood(
    MoodTrackerEventsSelect event,
    Emitter<MoodTrackerState> emit,
  ) {
    emit(MoodTrackerStateSelectedMood(
      selectedMood: event.selectedMood,
      selectedActivities: event.selectedActivities,
    ));
  }
}
