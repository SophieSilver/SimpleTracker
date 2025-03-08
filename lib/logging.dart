import 'package:logger/logger.dart';

class _LogPrinter extends LogPrinter {
  static final levelNames = {
    Level.trace: 'TRACE',
    Level.debug: 'DEBUG',
    Level.info: 'INFO',
    Level.warning: 'WARNING',
    Level.error: 'ERROR',
    Level.fatal: 'FATAL',
  };

  static final levelColors = {
    Level.trace: const AnsiColor.fg(129),
    Level.debug: const AnsiColor.fg(27),
    Level.info: const AnsiColor.fg(46),
    Level.warning: const AnsiColor.fg(226),
    Level.error: const AnsiColor.fg(196),
    Level.fatal: const AnsiColor.fg(196),
  };

  // Prints logs in the format like
  // [2017-11-09T02:12:24Z INFO] the answer was: 12
  @override
  List<String> log(LogEvent event) {
    final color = levelColors[event.level];
    final levelStr = levelNames[event.level];
    final timeStr = event.time.toIso8601String();
    var messageStr = event.message.toString();

    if (event.error != null) {
      messageStr += " (error = ${event.error})";
    }

    final logStr = "[$timeStr $levelStr] $messageStr";

    return [color == null ? logStr : color(logStr)];
  }
}

final log = Logger(level: Level.debug, printer: _LogPrinter());

// doesn't do anything but might in the future
void initLogger() {}
