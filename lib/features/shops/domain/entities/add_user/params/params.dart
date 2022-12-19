import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class AddUserParams extends Equatable {
  final String phoneNumber;

  const AddUserParams(this.phoneNumber);

  Map<String, dynamic> toJson() => _$AddUserParamsToJson(this);

  @override
  List<Object?> get props => [];
}
