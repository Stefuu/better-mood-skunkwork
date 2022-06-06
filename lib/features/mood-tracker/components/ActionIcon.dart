import 'package:flutter/material.dart';

class ActionIcon extends StatelessWidget {
  const ActionIcon({
    Key? key,
    this.name,
    required this.icon,
    this.padding,
    this.onTap,
    required this.color,
  }) : super(key: key);

  final void Function()? onTap;
  final IconData icon;
  final Color color;
  final String? name;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 5.0,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding ?? 0),
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Icon(
                icon,
                size: 50,
                color: color,
              ),
              if (name != null)
                Text(
                  name!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
