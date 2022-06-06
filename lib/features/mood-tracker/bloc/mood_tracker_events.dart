class MoodTrackerEvents {}

class MoodTrackerEventsSelect extends MoodTrackerEvents {
  MoodTrackerEventsSelect({
    this.selectedMood,
    this.selectedActivities,
  });

  List<int>? selectedActivities;
  int? selectedMood;
}
