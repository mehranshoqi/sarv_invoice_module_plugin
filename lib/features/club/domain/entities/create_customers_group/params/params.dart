import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class CreateCustomersGroupParams extends Equatable {
  String name;

  CreateCustomersGroupParams(this.name);

  Map<String, dynamic> toJson() => _$CreateCustomersGroupParamsToJson(this);

  @override
  List<Object?> get props => [name];
}
