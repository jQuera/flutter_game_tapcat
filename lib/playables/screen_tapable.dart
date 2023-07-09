import 'dart:developer';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';

class ScreenTapable extends PositionComponent with TapCallbacks {
  ScreenTapable() : super(anchor: Anchor.center);

  final _paint = Paint()..color = const Color(0x448BA8FF);

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    this.size = size - Vector2(100, 75);
    if (this.size.x < 100 || this.size.y < 100) {
      this.size = size * 0.9;
    }
    position = size / 2;
  }

  @override
  void render(Canvas canvas) {
    canvas.drawRect(size.toRect(), _paint);
  }

  @override
  void onTapUp(TapUpEvent event) {
    log('tap up');
  }

  @override
  void onTapDown(event) {
    log('tap down');
  }
}
