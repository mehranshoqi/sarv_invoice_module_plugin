import 'customer/customer.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class CreateCustomerResponse extends Equatable {
  final Customer customer;

  const CreateCustomerResponse(this.customer);

  factory CreateCustomerResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateCustomerResponseFromJson(data);

  @override
  List<Object?> get props => [];
}
