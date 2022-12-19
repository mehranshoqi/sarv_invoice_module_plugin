import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_info/user_info.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true, createToJson: false)
class User extends Equatable {
  final String createDate;
  final String? roleId;
  final List<String> permissions;
  final UserInfo user;

  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  const User(this.createDate, this.roleId, this.permissions, this.user);

  @override
  List<Object?> get props => [roleId, permissions, createDate];
}
