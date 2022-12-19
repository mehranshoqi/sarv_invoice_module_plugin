import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user/user.dart';

part 'store.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class Store extends Equatable {
  final String? name, phone, address, ownerId, id, createDate;
  final String? description, logo;
  final List<User> users;

  const Store(
    this.name,
    this.phone,
    this.address,
    this.ownerId,
    this.id,
    this.createDate,
    this.description,
    this.logo,
    this.users,
  );

  factory Store.fromJson(Map<String, dynamic> data) => _$StoreFromJson(data);

  @override
  List<Object?> get props => [id, ownerId, address];
}
