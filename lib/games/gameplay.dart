import 'package:flame/game.dart';
import 'package:flutter_game_tapcat/playable.dart';

class MyGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await add(Player());
  }
}
