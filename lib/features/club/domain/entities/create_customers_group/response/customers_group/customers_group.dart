import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customers_group.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class CustomersGroup extends Equatable {
  final String name;
  final String? id;
  final int? customerCount;
  @JsonKey(name: 'default')
  final bool isDefault;

  factory CustomersGroup.fromJson(Map<String, dynamic> data) =>
      _$CustomersGroupFromJson(data);

  const CustomersGroup(
    this.name,
    this.isDefault,
    this.customerCount,
    this.id,
  );

  @override
  List<Object?> get props => [id, name, customerCount, isDefault];
}
