import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'customers_group/customers_group.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class CreateCustomersGroupResponse extends Equatable {
  final CustomersGroup customerGroup;

  factory CreateCustomersGroupResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateCustomersGroupResponseFromJson(data);

  const CreateCustomersGroupResponse(this.customerGroup);

  @override
  List<Object?> get props => [];
}
