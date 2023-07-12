import 'package:flutter/material.dart';
import 'package:flutter_game_tapcat/playables/playable.dart';

class ActionBase {
  @mustCallSuper
  void action(Player playerTarget) {}
}
