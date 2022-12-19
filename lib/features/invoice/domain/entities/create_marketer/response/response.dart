import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'marketer/marketer.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false, explicitToJson: true)
class CreateMarketerResponse extends Equatable {
  final Marketer marketer;

  factory CreateMarketerResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateMarketerResponseFromJson(data);

  CreateMarketerResponse(this.marketer);

  @override
  List<Object?> get props => [marketer];
}
