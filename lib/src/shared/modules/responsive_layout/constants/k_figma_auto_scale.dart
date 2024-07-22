import 'dart:math';

/// FIGMA WIDTH - Global [figmaWidth] instance, gets updated by ResponsiveLayoutWidget.
///
/// Use this constant to convert figma design pixels (horizontal/width) to the current device viewport width [percentage].
double figmaWidth = 1;
double figmaHeight = 1;
double figmaDiagonal = sqrt(pow(figmaWidth, 2) + pow(figmaHeight, 2));
