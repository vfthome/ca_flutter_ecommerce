import 'dart:ui';

import 'package:flutter/material.dart';

final safeArea =
    MediaQueryData.fromView(PlatformDispatcher.instance.implicitView!).padding;
