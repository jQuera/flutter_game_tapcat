import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter_game_tapcat/playable.dart';

class MyGame extends Forge2DGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    await add(Player());
  }
}
