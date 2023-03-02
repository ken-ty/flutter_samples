import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_data.freezed.dart';
part 'count_data.g.dart';

@freezed
class CountData with _$CountData {
  factory CountData(
    int count,
    int countUp,
    int countDown,
  ) = _CountData;

  factory CountData.fromJson(Map<String, dynamic> json) => _$CountDataFromJson(json);
}
