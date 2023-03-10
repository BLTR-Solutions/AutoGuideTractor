import 'package:auto_guide_tractor/parallel_lines.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';

class MainWindow extends FlameGame {
  @override
  Future<void> onLoad() async {
    add(ParallelLines(size / 2, 0, size));

    SpriteComponent pointer = SpriteComponent();
    pointer
      ..sprite = await loadSprite('ship_A.png')
      ..size = Vector2(100, 100)
      ..position = size / 2
      ..anchor = Anchor.center;
    add(pointer);
  }
}
