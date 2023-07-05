import 'package:flutter/material.dart';

import 'package:flame/game.dart';
import 'package:flutter_game_tapcat/games/gameplay.dart';

void main() {
  final myGame = MyGame();
  runApp(
    GameWidget(
      game: myGame,
      overlayBuilderMap: {
        'PauseMenu': (context, game) {
          return Container(
            color: Colors.red,
            child: const Text('Un menu de pausa'),
          );
        }
      },
    ),
  );
}
