import 'package:flutter/material.dart';

import 'package:flame/game.dart';
import 'package:flutter_game_tapcat/games/gameplay.dart';
import 'package:flutter_game_tapcat/menus/ingame_menu.dart';

void main() {
  final myGame = MyGame();
  runApp(
    GameWidget(
      game: myGame,
      initialActiveOverlays: [InGameMenu.menuName],
      overlayBuilderMap: {
        'PauseMenu': (context, MyGame game) {
          return Container(
            color: Colors.red,
            child: const Text('Un menu de pausa'),
          );
        },
        InGameMenu.menuName: (context, MyGame game) => InGameMenu(gameRef: game)
      },
    ),
  );
}
