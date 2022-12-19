import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_phone.g.dart';

@JsonSerializable(createToJson: false)
class SendPhoneResponse extends Equatable {
  final int retryTime;

  const SendPhoneResponse(this.retryTime);

  factory SendPhoneResponse.fromJson(Map<String, dynamic> data) =>
      _$SendPhoneResponseFromJson(data);

  @override
  List<Object?> get props => [retryTime];
}
