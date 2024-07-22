import 'package:flutter/material.dart';

final view = WidgetsBinding.instance.platformDispatcher.views.first;
final size = view.physicalSize;
final pixelRatio = view.devicePixelRatio;

// // Size in physical pixels:
// final width = size.width;
// final height = size.height;

// Size in logical pixels:
final deviceWidth = size.width / pixelRatio;
final deviceHeight = size.height / pixelRatio;
