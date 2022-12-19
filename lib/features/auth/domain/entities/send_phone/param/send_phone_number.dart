import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_phone_number.g.dart';

@JsonSerializable(createFactory: false)
class SendPhoneNumberParams extends Equatable {
   String phoneNumber;

   SendPhoneNumberParams(this.phoneNumber);

  Map<String, dynamic> toJson() => _$SendPhoneNumberParamsToJson(this);

  @override
  List<Object?> get props => [phoneNumber];
}
