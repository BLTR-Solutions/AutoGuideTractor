import 'package:auto_guide_tractor/main_window.dart';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  final mainWindow = MainWindow();
  runApp(GameWidget(game: mainWindow));
}
