import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';

class Player extends BodyComponent {
  // Player() : super(size: Vector2.all(128));
  final Vector2 position = Vector2(20, 2);
  final Vector2 size = Vector2.all(6);

  @override
  Future<void> onLoad() async {
    // sprite = await Sprite.load('cat.png');
    await super.onLoad();
    add(
      SpriteComponent(
        sprite: await Sprite.load('cat.png'),
        size: size * 2,
        anchor: Anchor.center,
      ),
    );
  }

  @override
  Body createBody() {
    final shape = CircleShape()..radius = 6;
    final fixtureDef = FixtureDef(shape, friction: 0.5);
    final bodyDef = BodyDef(position: Vector2(5, 5), type: BodyType.dynamic);
    return world.createBody(bodyDef)..createFixture(fixtureDef);
    // TODO: implement createBody
    throw UnimplementedError();
  }
}
