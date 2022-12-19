import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_day.g.dart';

@JsonSerializable(createToJson: false)
class WeekDay extends Equatable {
  final String key, value, title;

  WeekDay(this.key, this.value, this.title);

  factory WeekDay.fromJson(Map<String, dynamic> data) =>
      _$WeekDayFromJson(data);

  @override
  List<Object?> get props => [value, title, key];
}
