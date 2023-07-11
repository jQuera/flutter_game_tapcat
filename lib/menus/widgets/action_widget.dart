import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  const ActionWidget({
    required this.action,
    super.key,
  });

  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        action();
      },
      child: Container(
        color: Colors.amber,
        margin: const EdgeInsets.all(10),
        child: const Column(
          children: [
            Placeholder(
              fallbackHeight: 30,
              fallbackWidth: 30,
            ),
          ],
        ),
      ),
    );
  }
}
