import 'package:flutter/material.dart';
import '../components/ActionIconListing.dart';
import '../components/ActionIcon.dart';

class MoodTrackerView extends StatelessWidget {
  const MoodTrackerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _renderMoodList(),
        const SizedBox(height: 50),
        _renderActivitiesList(),
      ],
    );
  }

  Widget _renderActivitiesList() {
    return ActionIconListing(
      title: 'What did you do today?',
      items: [
        ActionIcon(
          icon: Icons.work,
          color: Colors.deepPurple,
          name: 'Work',
          onTap: () {
            // bloc.add(MoodTrackerEventsSelectMood());
          },
        ),
        ActionIcon(
          icon: Icons.self_improvement,
          color: Colors.deepPurple,
          name: 'Meditation',
          onTap: () {
            print('hi');
          },
        ),
        ActionIcon(
          icon: Icons.self_improvement,
          color: Colors.deepPurple,
          name: 'Meditation',
          onTap: () {
            print('hi');
          },
        ),
      ],
    );
  }

  Widget _renderMoodList() {
    return ActionIconListing(
      title: 'How are you feeling today?',
      items: [
        ActionIcon(
          icon: Icons.sentiment_very_dissatisfied,
          color: Colors.deepPurple,
          name: '',
          onTap: () {
            print('hi');
          },
        ),
        ActionIcon(
          icon: Icons.sentiment_very_dissatisfied,
          color: Colors.deepPurple,
          onTap: () {
            print('hi');
          },
        ),
        ActionIcon(
          icon: Icons.sentiment_satisfied,
          color: Colors.deepPurple,
          onTap: () {
            print('hi');
          },
        ),
        ActionIcon(
          icon: Icons.sentiment_satisfied_alt,
          color: Colors.deepPurple,
          onTap: () {
            print('hi');
          },
        ),
        ActionIcon(
          icon: Icons.sentiment_very_satisfied,
          color: Colors.deepPurple,
          onTap: () {
            print('hi');
          },
        ),
      ],
    );
  }
}
