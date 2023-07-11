import 'package:flame/extensions.dart';
import 'package:flutter_game_tapcat/actions/action_base.dart';
import 'package:flutter_game_tapcat/playables/playable.dart';

class ForceUp extends ActionBase {
  @override
  void action(Player playerTarget) {
    super.action(playerTarget);
    playerTarget.body.applyLinearImpulse(Vector2(0, -1) * 3000);
  }
}
