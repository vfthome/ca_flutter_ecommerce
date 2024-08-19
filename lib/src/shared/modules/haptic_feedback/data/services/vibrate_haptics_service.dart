import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:vibration/vibration.dart';

import '../../interactor/services/i_haptics_service.dart';

class VibrateHapticsService implements IHapticService {
  int convertIntensity(amplitude) {
    return (lerpDouble(1, 255, amplitude.toDouble()) ?? 128).toInt();
  }

  @override
  void heavyImpact() {
    HapticFeedback.heavyImpact();
    SystemSound.play(SystemSoundType.click);
  }

  @override
  void lightImpact() {
    HapticFeedback.mediumImpact();
    SystemSound.play(SystemSoundType.click);
  }

  @override
  void mediumImpact() {
    HapticFeedback.lightImpact();
    SystemSound.play(SystemSoundType.click);
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
