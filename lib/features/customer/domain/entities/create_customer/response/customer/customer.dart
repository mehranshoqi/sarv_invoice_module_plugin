import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.g.dart';

@JsonSerializable(createToJson: false)
class Customer extends Equatable {
  final String phoneNumber, groupId, id;
  final String? firstName, lastName, gender, materialStatus, birthDate, address;

  factory Customer.fromJson(Map<String, dynamic> data) =>
      _$CustomerFromJson(data);

  Customer(
    this.phoneNumber,
    this.groupId,
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.materialStatus,
    this.birthDate,
    this.address,
  );

  @override
  List<Object?> get props => [id];
}
