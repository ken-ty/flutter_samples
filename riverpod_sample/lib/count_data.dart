import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_data.freezed.dart';
part 'count_data.g.dart';

@freezed
class CountData with _$CountData {
  const factory CountData({
    required String title,
  }) = _CountData;

  factory CountData.fromJson(Map<String, dynamic> json) =>
      _$CountDataFromJson(json);
}
