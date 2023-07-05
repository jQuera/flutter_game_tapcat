import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

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

class MyCrate extends SpriteComponent {
  MyCrate() : super(size: Vector2.all(16));

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('yinyancat.png');
  }
}

class MyGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await add(MyCrate());
  }
}
