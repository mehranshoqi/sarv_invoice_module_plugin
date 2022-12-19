import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/entities/b_enum/b_enum.dart';

part 'enums.g.dart';

@JsonSerializable()
class InitEnums extends Equatable {
  final List<BEnum> gender, permission, productType;

  const InitEnums(this.gender, this.permission, this.productType);

  factory InitEnums.fromJson(Map<String, dynamic> data) =>
      _$InitEnumsFromJson(data);

  Map<String, dynamic> toJson() => _$InitEnumsToJson(this);

  @override
  List<Object?> get props => [gender, permission, productType];
}
