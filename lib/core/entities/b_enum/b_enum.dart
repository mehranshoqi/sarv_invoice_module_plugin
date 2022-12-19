import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'b_enum.g.dart';

@JsonSerializable()
class BEnum extends Equatable {
  final String key, title, value;

  const BEnum(this.key, this.title, this.value);

  factory BEnum.fromJson(Map<String, dynamic> data) => _$BEnumFromJson(data);

  Map<String, dynamic> toJson() => _$BEnumToJson(this);

  @override
  List<Object?> get props => [key, title, value];
}
