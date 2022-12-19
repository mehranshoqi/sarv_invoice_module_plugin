import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_name_response.g.dart';

@JsonSerializable(createToJson: false)
class SendNameResponse extends Equatable {
  final String phoneNumber, verifyDate, id;

  final String? firstName, lastName;

  const SendNameResponse(
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.verifyDate,
    this.id,
  );

  factory SendNameResponse.fromJson(Map<String, dynamic> data) =>
      _$SendNameResponseFromJson(data);

  @override
  List<Object?> get props => [id, lastName, phoneNumber];
}
