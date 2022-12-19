import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../create_customers_group/response/customers_group/customers_group.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class GetCustomersGroupsResponse extends Equatable {
  final List<CustomersGroup> customerGroups;

  factory GetCustomersGroupsResponse.fromJson(Map<String, dynamic> data) =>
      _$GetCustomersGroupsResponseFromJson(data);

  GetCustomersGroupsResponse(this.customerGroups);

  @override
  List<Object?> get props => [customerGroups];
}
