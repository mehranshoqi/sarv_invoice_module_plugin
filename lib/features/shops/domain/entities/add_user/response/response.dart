import 'store_user/store_user.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class AddUserResponse extends Equatable {
  final StoreUser storeUser;

  factory AddUserResponse.fromJson(Map<String, dynamic> data) =>
      _$AddUserResponseFromJson(data);

  const AddUserResponse(this.storeUser);

  @override
  List<Object?> get props => [];
}
