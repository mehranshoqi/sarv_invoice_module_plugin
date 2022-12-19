import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
// ignore: must_be_immutable
class CreateWarehouseParams extends Equatable {
  int number;
  String name, manager, phone, address, description;

  CreateWarehouseParams(
    this.number,
    this.name,
    this.manager,
    this.phone,
    this.address,
    this.description,
  );

  Map<String, dynamic> toJson() => _$CreateWarehouseParamsToJson(this);

  @override
  List<Object?> get props => [];
}
