import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class CreateProductTypeParams extends Equatable {
  String name;

  CreateProductTypeParams(this.name);

  Map<String, dynamic> toJson() => _$CreateProductTypeParamsToJson(this);

  @override
  List<Object?> get props => [name];
}
