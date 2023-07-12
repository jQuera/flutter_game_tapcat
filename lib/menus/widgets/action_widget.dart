import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  const ActionWidget({
    required this.icon,
    required this.onTap,
    super.key,
  });
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        color: Colors.amber,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
              width: 50,
              child: Icon(icon),
            ),
          ],
        ),
      ),
    );
  }
}
