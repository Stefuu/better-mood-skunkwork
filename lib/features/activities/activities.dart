import 'package:flutter/material.dart';

class ActivitiesView extends StatelessWidget {
  const ActivitiesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Text('Activities'),
        ),
      ),
    );
  }
}
