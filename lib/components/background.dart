import 'package:flame/components.dart';
import 'package:flame/flame.dart';

import '../game/assets.dart';
import '../game/flappy_bird_game.dart';

class Background extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Background();
  @override
  Future<void> onLoad() async {
    final background = await Flame.images.load(Assets.background);

    // require HasGameRef mixin
    ///// Equivalent to the [game] property
    ///// T get gameRef => game;
    size = gameRef.size;

    sprite = Sprite(background);
  }
}
