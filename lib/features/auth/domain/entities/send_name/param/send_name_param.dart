import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_name_param.g.dart';

@JsonSerializable(createFactory: false)
class SendNameParams extends Equatable {
   String firstName, lastName;

  SendNameParams(this.firstName, this.lastName);

  Map<String, dynamic> toJson() => _$SendNameParamsToJson(this);

  @override
  List<Object?> get props => [firstName, lastName];
}
