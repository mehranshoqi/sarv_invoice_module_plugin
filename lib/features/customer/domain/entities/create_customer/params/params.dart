import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class CreateCustomerParams extends Equatable {
  String phoneNumber, groupId, lastName;

  CreateCustomerParams(
    this.phoneNumber,
    this.groupId,
    this.lastName,
  );

  Map<String, dynamic> toJson() => _$CreateCustomerParamsToJson(this);

  @override
  List<Object?> get props => [phoneNumber, groupId];
}
