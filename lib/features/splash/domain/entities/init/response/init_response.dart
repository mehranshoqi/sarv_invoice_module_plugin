import 'discount_plan_rules/discount_plan_rules.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums/enums.dart';

part 'init_response.g.dart';

@JsonSerializable()
class InitResponse extends Equatable {
  final InitEnums enums;
  final List<DiscountPlanRule> discountPlanRules;

  const InitResponse(this.enums, this.discountPlanRules);

  factory InitResponse.fromJson(Map<String, dynamic> data) =>
      _$InitResponseFromJson(data);

  Map<String, dynamic> toJson() => _$InitResponseToJson(this);

  @override
  List<Object?> get props => [enums, discountPlanRules];
}
