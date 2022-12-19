import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class UserProfile extends Equatable {
  String? phoneNumber, firstName, lastName;

  UserProfile({
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
  });

  factory UserProfile.fromJson(Map<String, dynamic> data) =>
      _$UserProfileFromJson(data);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);

  @override
  List<Object?> get props => [phoneNumber, firstName];
}
