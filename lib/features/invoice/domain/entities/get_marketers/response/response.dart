import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../create_marketer/response/marketer/marketer.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class GetMarketersResponse extends Equatable {
  final List<Marketer> items;

  factory GetMarketersResponse.fromJson(Map<String, dynamic> data) =>
      _$GetMarketersResponseFromJson(data);

  GetMarketersResponse(this.items);

  @override
  List<Object?> get props => [items];
}
