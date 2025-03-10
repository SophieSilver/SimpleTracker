import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:so_simple_tracker/model/stat.dart';
import 'package:csv/csv.dart';

final List<Export> supportedExportMethods = Platform.isLinux
    ? [const SaveExport()]
    : [const SaveExport(), const ShareExport()];

abstract class Export {
  String get name;
  Future<void> export(Iterable<StatRecord> records);
}

class ShareExport implements Export {
  const ShareExport();

  @override
  String get name => "Share";

  @override
  Future<void> export(Iterable<StatRecord> records) async {
    final csvStats = _statsToCsv(records);
    final csvBytes = utf8.encode(csvStats);
    final fileName = _getDefaultFilename();

    await Share.shareXFiles(
      [XFile.fromData(csvBytes, mimeType: "text/csv", name: fileName)],
      fileNameOverrides: [fileName],
    );
  }
}

class SaveExport implements Export {
  const SaveExport();

  @override
  String get name => "Save to file";

  @override
  Future<void> export(Iterable<StatRecord> records) async {
    final csvStats = _statsToCsv(records);
    final fileName = _getDefaultFilename();
    final isMobile = Platform.isAndroid || Platform.isIOS;

    final savePath = await FilePicker.platform.saveFile(
      initialDirectory: (await getDownloadsDirectory())?.path,
      fileName: fileName,
      bytes: isMobile ? utf8.encode(csvStats) : null,
    );

    if (savePath == null || isMobile) {
      return;
    }

    final saveFile = File(savePath);
    await saveFile.writeAsString(csvStats, encoding: utf8);
  }
}

String _statsToCsv(Iterable<StatRecord> stats) {
  final header = ["Date", "Value"];
  final rows = stats.map((stat) =>
      [DateFormat("dd MMM y").format(stat.dateTime), stat.numericValue]);

  final data = [header, ...rows];

  return const ListToCsvConverter().convert(data);
}

String _getDefaultFilename() {
  final nowString = DateTime.now()
      .toIso8601String()
      .replaceAll(":", "_")
      .replaceAll(".", "_");
  return "data-$nowString.csv";
}
