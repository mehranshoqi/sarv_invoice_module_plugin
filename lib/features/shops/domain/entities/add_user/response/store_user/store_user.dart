import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../create_store/response/store/user/user_info/user_info.dart';

part 'store_user.g.dart';

@JsonSerializable(createToJson: false)
class StoreUser extends Equatable {
  final String storeId, userId, createDate, updateDate;
  final List<String> permissions;
  final UserInfo user;
  final String? roleId;

  factory StoreUser.fromJson(Map<String, dynamic> data) =>
      _$StoreUserFromJson(data);

  StoreUser(this.storeId, this.userId, this.createDate, this.updateDate, this.permissions, this.user, this.roleId);

  @override
  List<Object?> get props => [];
}
