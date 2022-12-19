import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_response.g.dart';

@JsonSerializable(createToJson: false)
class SendOtpResponse extends Equatable {
  final String phoneNumber, verifyDate, id;

  final String? firstName, lastName;

  const SendOtpResponse(
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.verifyDate,
    this.id,
  );

  factory SendOtpResponse.fromJson(Map<String, dynamic> data) =>
      _$SendOtpResponseFromJson(data);

  @override
  List<Object?> get props => [id, lastName, phoneNumber];
}
