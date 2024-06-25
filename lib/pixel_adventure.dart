import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:pixel_adventure/levels/level.dart';

class PixelAdventure extends FlameGame {
  late final CameraComponent cam;

  final world = Level(levelName: 'Level-02');

  @override
  FutureOr<void> onLoad() async {
    //Loading all images into cache
    await images.loadAllImages();

    cam = CameraComponent.withFixedResolution(
      world: world,
      width: 640,
      height: 360,
    );
    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([
      world,
      cam,
    ]);
    return super.onLoad();
  }

  @override
  Color backgroundColor() => const Color(0xFF211F30);
}
