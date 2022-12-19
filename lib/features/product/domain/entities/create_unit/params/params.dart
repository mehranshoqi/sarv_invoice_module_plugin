import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class CreateUnitParams extends Equatable {
  String name;

  CreateUnitParams(this.name);

  Map<String, dynamic> toJson() => _$CreateUnitParamsToJson(this);

  @override
  List<Object?> get props => [name];
}
