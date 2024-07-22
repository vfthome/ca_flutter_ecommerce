/// Interface for logger service.
abstract class ILoggerService {
  /// Debug log.
  void d({required String text, required});

  /// Error log.
  void e({required String text, required});

  /// Warnings log.
  void w({required String text, required});

  /// Information log.
  void i({required String text, required});

  /// Verbose log.
  void v({required String text, required});
}
