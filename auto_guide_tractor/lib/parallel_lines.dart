import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ParallelLines extends PositionComponent {
  final linePaint = Paint()..color = Colors.red;
  final double spaceBetween = 100;
  final double thick = 10;

  ParallelLines(Vector2 startPosition, double angle, Vector2 size) {
    add(RectangleComponent(
        position: startPosition,
        size: Vector2(thick, sqrt(pow(size.x, 2) + pow(size.y, 2))),
        angle: angle,
        paint: linePaint,
        anchor: Anchor.center));

    for (var i = 1; i < size.x / 2 / spaceBetween; i++) {
      add(RectangleComponent(
          position: startPosition + Vector2(spaceBetween * i, 0),
          size: Vector2(thick, sqrt(pow(size.x, 2) + pow(size.y, 2))),
          angle: angle,
          paint: linePaint,
          anchor: Anchor.center));
      add(RectangleComponent(
          position: startPosition - Vector2(spaceBetween * i, 0),
          size: Vector2(thick, sqrt(pow(size.x, 2) + pow(size.y, 2))),
          angle: angle,
          paint: linePaint,
          anchor: Anchor.center));
    }
  }
}
