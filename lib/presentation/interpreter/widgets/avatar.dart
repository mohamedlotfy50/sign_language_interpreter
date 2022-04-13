import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:sign_language_interpreter/asset_locations.dart';

class MyAvatar extends FlameGame {
  final SpriteComponent background = SpriteComponent();

  @override
  Future<void>? onLoad() async {
    final double screenWidth = size[0];
    final double screenHeight = size[0];

    background
      ..sprite = await loadSprite(AssetLocations.avatarBG)
      ..size = size;
    add(background);
    return super.onLoad();
  }
}
