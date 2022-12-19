import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_store_param.g.dart';

@JsonSerializable(createFactory: false)
class CreateStoreParams extends Equatable {
  String phone, name, address;
  String? description, logoPath;

  CreateStoreParams({
    required this.phone,
    required this.name,
    required this.address,
    this.description,
    this.logoPath
  });

  Map<String, dynamic> toJson() => _$CreateStoreParamsToJson(this);

  @override
  List<Object?> get props => [name, address, phone];
}
