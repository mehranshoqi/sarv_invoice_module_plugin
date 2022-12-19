import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class CreateMarketerParams extends Equatable {
  String name, commissionType;
  int commissionPercent;

  CreateMarketerParams(this.name, this.commissionPercent, this.commissionType);

  Map<String, dynamic> toJson() => _$CreateMarketerParamsToJson(this);

  @override
  List<Object?> get props => [name, commissionPercent, commissionType];
}
