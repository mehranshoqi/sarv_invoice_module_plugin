import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../create_customer/response/customer/customer.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class GetCustomersResponse extends Equatable {
  final List<Customer> items;
  final int page, totalItems, pageSize;

  factory GetCustomersResponse.fromJson(Map<String, dynamic> data) =>
      _$GetCustomersResponseFromJson(data);

  GetCustomersResponse(this.items, this.page, this.totalItems, this.pageSize);

  @override
  List<Object?> get props => [];
}
