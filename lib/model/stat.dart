import 'package:freezed_annotation/freezed_annotation.dart';

part '/generated/model/stat.freezed.dart';

@freezed
class StatEntry with _$StatEntry {
  factory StatEntry({
    required int id,
    required StatRecord stat,
  }) = _StatEntry;
}

@freezed
class StatRecord with _$StatRecord {
  factory StatRecord({
    required DateTime dateTime,
    required double numericValue,
  }) = _StatRecord;

  // this is needed because of a quirk of freezed
  const StatRecord._();

  factory StatRecord.withTimestamp({
    required int timestamp,
    required double numericValue,
  }) {
    return StatRecord(
      dateTime: DateTime.fromMillisecondsSinceEpoch(timestamp * 1000),
      numericValue: numericValue,
    );
  }

  factory StatRecord.defaultNow() =>
      StatRecord(dateTime: DateTime.now(), numericValue: 0.0);

  int get timestamp => dateTime.millisecondsSinceEpoch ~/ 1000;
}
