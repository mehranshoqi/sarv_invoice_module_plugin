import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../error/response_error.dart';

part 'base_response.g.dart';

@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class BaseResponse<T> extends Equatable {
  final ResponseError? error;
  final T? data;

  const BaseResponse({required this.data, required this.error});

  factory BaseResponse.fromJson(
    Map<String, dynamic> map,
    T Function(dynamic map) fromJsonT,
  ) =>
      _$BaseResponseFromJson(map, fromJsonT);

  @override
  List<Object?> get props => [data, error];
}
