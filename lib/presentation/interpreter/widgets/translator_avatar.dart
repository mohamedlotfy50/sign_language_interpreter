import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:sign_language_interpreter/domain/interpreter/core/words.dart';

class TranslatorAvatar extends SpriteAnimationComponent with HasGameRef {
  late final SpriteAnimation _salamAlikom, _sbahalkir, _alhamdullah;
  int currentSign = 0;
  List<Signs> signs = [];

  TranslatorAvatar()
      : super(
          size: Vector2(480, 720),
        );
  @override
  Future<void> onLoad() async {
    super.onLoad();

    _loadAnimations().then((value) {
      animation = _alhamdullah;
      print('animation loaded');
    });
  }

  @override
  void update(double dt) {
    print(signs.length);
    super.update(dt);
    if (signs.isEmpty) return;
    if (animation!.isLastFrame) {
      translateSigns(signs.removeAt(0));
    }
  }

  void translateSigns(Signs sign) {
    switch (sign) {
      case Signs.alhamdullah:
        animation = _alhamdullah;

        break;
      case Signs.salamalikom:
        animation = _salamAlikom;

        break;
      case Signs.sabahalkir:
        animation = _sbahalkir;

        break;
    }
  }

  Future<void> _loadAnimations() async {
    final spriteSheet = SpriteSheet(
        image: await gameRef.images.load('spritesheet2022-04-21T13-09-56.png'),
        srcSize: Vector2(320, 480));
    _alhamdullah =
        spriteSheet.createAnimation(row: 0, stepTime: 0.1, to: 36, loop: false);
    _salamAlikom =
        spriteSheet.createAnimation(row: 1, stepTime: 0.1, loop: false);
    _sbahalkir =
        spriteSheet.createAnimation(row: 2, stepTime: 0.1, loop: false);
  }
}
