import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_error.g.dart';

@JsonSerializable(createToJson: false)
class ResponseError extends Equatable {
  final int statusCode;
  final List<String> message;
  final String error;

  const ResponseError({
    required this.statusCode,
    required this.message,
    required this.error,
  });

  factory ResponseError.fromJson(Map<String, dynamic> map) =>
      _$ResponseErrorFromJson(map);

  @override
  List<Object?> get props => [statusCode, message, error];
}
