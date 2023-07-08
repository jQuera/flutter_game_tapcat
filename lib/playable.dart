import 'dart:developer';

import 'package:flame/components.dart';
import 'package:flame/events.dart';

class Player extends SpriteComponent with TapCallbacks {
//   Player(): super(
// size = Vector2.all(120),
//     position = Vector2(120, 300),
//     anchor = Anchor.center,
//   );
  Player() : super(size: Vector2.all(120));
  // final Vector2 position = Vector2(20, 2);
  // final Vector2 _size = Vector2.all(120);

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('cat.png');

    // add(PositionComponent());
    // add(
    //   SpriteComponent(
    //     sprite: await Sprite.load('cat.png'),
    //     size: _size,
    //     anchor: Anchor.center,
    //   ),
    // );
  }

  @override
  void onTapDown(event) {
    if (event.handled) {
      log('---- tapped down');
    }
  }

  @override
  void onTapUp(event) {
    if (event.handled) {
      log('---- tapped up');
    }
  }

  // @override
  // Body createBody() {
  //   final shape = CircleShape()..radius = 6;
  //   final fixtureDef = FixtureDef(shape, friction: 0.5);
  //   final bodyDef = BodyDef(position: Vector2(5, 5), type: BodyType.kinematic);
  //   return world.createBody(bodyDef)..createFixture(fixtureDef);
  // }
}
