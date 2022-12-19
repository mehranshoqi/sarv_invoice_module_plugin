import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_plan_rules.g.dart';

@JsonSerializable()
class DiscountPlanRule extends Equatable {
  final String type, key, title;

  factory DiscountPlanRule.fromJson(Map<String, dynamic> data) =>
      _$DiscountPlanRuleFromJson(data);

  DiscountPlanRule(this.type, this.key, this.title);

  Map<String, dynamic> toJson() => _$DiscountPlanRuleToJson(this);

  @override
  List<Object?> get props => [type, title, key];
}
