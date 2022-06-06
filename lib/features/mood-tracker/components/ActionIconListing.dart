import 'package:flutter/material.dart';

class ActionIconListing extends StatelessWidget {
  const ActionIconListing({
    Key? key,
    required this.items,
    required this.title,
  }) : super(key: key);

  final String title;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: items,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
