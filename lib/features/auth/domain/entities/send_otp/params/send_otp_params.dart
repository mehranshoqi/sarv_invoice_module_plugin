// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_params.g.dart';

@JsonSerializable(createFactory: false)
class SendOtpParams extends Equatable {
  String phoneNumber, code;

  SendOtpParams(this.phoneNumber, this.code);

  Map<String, dynamic> toJson() => _$SendOtpParamsToJson(this);

  @override
  List<Object?> get props => [phoneNumber, code];
}
