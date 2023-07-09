import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game_tapcat/components/boundaries.dart';
import 'package:flutter_game_tapcat/playables/playable.dart';

class MyGame extends Forge2DGame {
  @override
  Color backgroundColor() {
    return Colors.amber;
  }

  @override
  Future<void> onLoad() async {
    add(Player(Vector2(size.x / 2, 0)));
    addAll(createBoundaries(size
      ..y -= 10
      ..toRect().bottomRight.toVector2()));
  }
}
