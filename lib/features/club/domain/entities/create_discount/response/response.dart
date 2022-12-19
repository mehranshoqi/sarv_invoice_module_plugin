import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class CreateDiscountResponse extends Equatable {
  final String todo;
  factory CreateDiscountResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateDiscountResponseFromJson(data);

  CreateDiscountResponse(this.todo);

  @override
  List<Object?> get props => [];
}
