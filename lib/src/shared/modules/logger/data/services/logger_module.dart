import 'package:ca_flutter_test/src/shared/modules/logger/interactor/services/i_logger_service.dart';
import 'package:flutter/material.dart';

/// Implementation of logger service.
class LoggerService implements ILoggerService {
  /// Debug log.
  @override
  void d({required String text, required}) {
    debugPrint('🐛 [DEBUG LOG] $text');
  }

  /// Error log.
  @override
  void e({required String text, required}) {
    debugPrint('❌ [ERROR LOG] $text');
  }

  /// Warnings log.
  @override
  void w({required String text, required}) {
    debugPrint('❗️ [WARNING LOG] $text');
  }

  /// Information log.
  @override
  void i({required String text, required}) {
    debugPrint('💬 [INFORMATION LOG] $text');
  }

  /// Verbose log.
  @override
  void v({required String text, required}) {
    debugPrint('🚀 [VERBOSE LOG] $text');
  }
}
