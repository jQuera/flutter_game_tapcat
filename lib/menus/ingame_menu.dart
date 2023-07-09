import 'package:flutter/material.dart';

class InGameMenu extends StatelessWidget {
  const InGameMenu({super.key});
  static String menuName = 'InGameMenu';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.withOpacity(0.2),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SafeArea(
            child: Row(
              children: [
                Text('Score: 10'),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                color: Colors.grey,
                height: 70,
                width: double.infinity,
                child: SafeArea(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
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
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
