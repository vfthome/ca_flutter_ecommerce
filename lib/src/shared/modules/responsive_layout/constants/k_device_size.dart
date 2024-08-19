import 'package:flutter/material.dart';

final _view = WidgetsBinding.instance.platformDispatcher.views.first;
final _size = _view.physicalSize;
final _pixelRatio = _view.devicePixelRatio;

// // Size in physical pixels:
// final width = size.width;
// final height = size.height;

// Size in logical pixels:
final deviceWidth = _size.width / _pixelRatio;
final deviceHeight = _size.height / _pixelRatio;
