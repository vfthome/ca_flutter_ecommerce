abstract class IHapticService {
  void vibrate({
    int durationMiliseconds,
    double amplitude,
  });

  void vibrateWithPattern({
    List<int> delayPatternMiliseconds,
  });

  void vibrateWithPatternAndAmplitude({
    List<int> delayPatternMiliseconds,
    List<double> amplitudes,
  });

  // Default Flutter Haptic Feedback
  void heavyImpact();
  void mediumImpact();
  void lightImpact();
}
