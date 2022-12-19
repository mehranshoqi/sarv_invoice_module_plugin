import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marketer.g.dart';

@JsonSerializable(createToJson: false)
class Marketer extends Equatable {
  final String name, commissionType, id;
  final int commissionPercent;

  factory Marketer.fromJson(Map<String, dynamic> data) =>
      _$MarketerFromJson(data);

  Marketer(this.name, this.commissionType, this.id, this.commissionPercent);

  @override
  List<Object?> get props => [name, id, commissionPercent, commissionType];
}
