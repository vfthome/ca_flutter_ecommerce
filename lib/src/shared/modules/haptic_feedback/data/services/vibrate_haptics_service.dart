import 'dart:ui';

import 'package:ca_flutter_test/src/shared/modules/haptic_feedback/interactor/services/i_haptics_service.dart';
import 'package:flutter/services.dart';
import 'package:vibration/vibration.dart';

class VibrateHapticsService implements IHapticService {
  int convertIntensity(amplitude) {
    return (lerpDouble(1, 255, amplitude.toDouble()) ?? 128).toInt();
  }

  @override
  void heavyImpact() {
    HapticFeedback.heavyImpact();
  }

  @override
  void lightImpact() {
    HapticFeedback.mediumImpact();
  }

  @override
  void mediumImpact() {
    HapticFeedback.lightImpact();
  }

  @override
  void vibrate({
    int durationMiliseconds = 50,
    double amplitude = 0.5,
  }) {
    Vibration.vibrate(
      duration: durationMiliseconds,
      amplitude: convertIntensity(amplitude),
    );
  }

  @override
  void vibrateWithPattern({
    List<int> delayPatternMiliseconds = const [100, 100, 100, 100],
  }) {
    Vibration.vibrate(pattern: delayPatternMiliseconds);
  }

  @override
  void vibrateWithPatternAndAmplitude({
    List<int> delayPatternMiliseconds = const [100, 100, 100, 100],
    List<double> amplitudes = const [0.5, 0.5],
  }) {
    Vibration.vibrate(
      pattern: delayPatternMiliseconds,
      intensities: amplitudes
          .map(
            (amplitude) => convertIntensity(amplitude),
          )
          .toList(),
    );
  }
}
