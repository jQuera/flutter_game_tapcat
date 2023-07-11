import 'package:flutter/material.dart';
import 'package:flutter_game_tapcat/actions/force_left.dart';
import 'package:flutter_game_tapcat/actions/force_right.dart';
import 'package:flutter_game_tapcat/actions/force_up.dart';
import 'package:flutter_game_tapcat/games/gameplay.dart';
import 'package:flutter_game_tapcat/menus/widgets/action_widget.dart';

class InGameMenu extends StatelessWidget {
  const InGameMenu({required this.gameRef, super.key});
  final MyGame gameRef;
  static String menuName = 'InGameMenu';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.withOpacity(0.2),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SafeArea(
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
                  child: Row(
                    children: [
                      ActionWidget(action: () {
                        print('realizando forceleft');
                        ForceLeft().action(gameRef.player);
                      }),
                      ActionWidget(action: () {
                        print('realizando forceRight');
                        ForceRight().action(gameRef.player);
                      }),
                      ActionWidget(action: () {
                        print('realizando forceUp');
                        ForceUp().action(gameRef.player);
                      }),
                    ],
                  ),
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: 3,
                  //   scrollDirection: Axis.horizontal,
                  //   itemBuilder: (context, index) =>
                  // ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}