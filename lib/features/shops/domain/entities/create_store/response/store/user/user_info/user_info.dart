import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.g.dart';

@JsonSerializable(createToJson: false)
class UserInfo extends Equatable {
  final String id, phoneNumber, firstName, lastName, verifyDate;

  factory UserInfo.fromJson(Map<String, dynamic> data) =>
      _$UserInfoFromJson(data);

  const UserInfo(this.id, this.phoneNumber, this.firstName, this.lastName,
      this.verifyDate);

  @override
  List<Object?> get props => [];
}
