import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../features/activities/activities.dart';
import '../features/mood-tracker/views/mood_tracker.dart';

class Router {
  final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const MoodTrackerView(),
      ),
      GoRoute(
        path: '/page2',
        builder: (BuildContext context, GoRouterState state) =>
            const ActivitiesView(),
      ),
    ],
  );
}
