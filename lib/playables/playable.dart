import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';

class Player extends BodyComponent {
  final Vector2 _position;

  Player(this._position);

  @override
  Future<void> onLoad() async {
    super.onLoad();
    add(
      SpriteComponent(
        sprite: await Sprite.load('cat.png'),
        size: Vector2.all(8),
        anchor: Anchor.center,
      ),
    );
    // add(CircleHitbox(radius: 5));
  }

  @override
  Body createBody() {
    final shape = CircleShape();
    shape.radius = 5;
    setColor(Colors.red);

    final fixtureDef = FixtureDef(
      shape,
      restitution: 1,
      density: 1.0,
      friction: 0.4,
    );

    final bodyDef = BodyDef(
      userData: this,
      angularDamping: 0.8,
      position: _position,
      type: BodyType.dynamic,
    );

    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}
