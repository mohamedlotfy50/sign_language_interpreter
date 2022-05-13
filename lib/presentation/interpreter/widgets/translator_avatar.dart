// import 'package:flame/components.dart';
// import 'package:flame/sprite.dart';
// import 'package:sign_language_interpreter/domain/interpreter/animation_details.dart';
// import 'package:sign_language_interpreter/domain/interpreter/core/words.dart';

// class TranslatorAvatar extends SpriteAnimationComponent with HasGameRef {
//   late final SpriteAnimation _idl;
//   late final SpriteSheet spriteSheet;
//   int currentSign = 0;
//   List<AnimationDetails> signs = [];

//   TranslatorAvatar()
//       : super(
//           size: Vector2(480, 720),
//         );
//   @override
//   Future<void> onLoad() async {
//     super.onLoad();

//     _loadAnimations().then((value) {
//       animation = _idl;
//       print('animation loaded');
//     });
//   }

//   @override
//   void update(double dt) {
//     super.update(dt);
//     if (animation!.isLastFrame) {
//       if (signs.isEmpty) {
//         if (animation == _idl) {
//           return;
//         } else {
//           animation = _idl;
//         }
//       } else {
//         translateSigns(signs.removeAt(0));
//       }
//     }
//   }

//   void translateSigns(AnimationDetails sign) {
//     animation = spriteSheet.createAnimation(
//         row: sign.row,
//         stepTime: 0.1,
//         from: sign.startingFrame,
//         to: sign.endingFrame,
//         loop: false);
//   }

//   Future<void> _loadAnimations() async {
//     spriteSheet = SpriteSheet(
//         image: await gameRef.images.load('spritesheet2022-04-21T13-09-56.png'),
//         srcSize: Vector2(320, 480));
//     _idl = spriteSheet.createAnimation(
//         row: 0, stepTime: 0.1, from: 0, to: 1, loop: false);
//   }
// }
