import 'package:flame/extensions.dart';
import 'package:flutter_game_tapcat/actions/action_base.dart';
import 'package:flutter_game_tapcat/playables/playable.dart';

class ForceRight extends ActionBase {
  @override
  void action(Player playerTarget) {
    super.action(playerTarget);
    playerTarget.body.applyLinearImpulse(Vector2(1, -2) * 2000);
  }
}
