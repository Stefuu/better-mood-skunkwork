abstract class MoodTrackerState {}

class MoodTrackerStateInitial extends MoodTrackerState {}

class MoodTrackerStateSelectedMood extends MoodTrackerState {
  MoodTrackerStateSelectedMood({
    this.selectedMood,
    this.selectedActivities,
  });

  List<int>? selectedActivities;
  int? selectedMood;
}
