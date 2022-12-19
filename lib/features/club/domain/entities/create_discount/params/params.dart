import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'params.g.dart';

@JsonSerializable(createFactory: false)
class CreateDiscountParams extends Equatable {
  CreateDiscountParams({
    required this.name,
    required this.target,
    required this.startDate,
    required this.endDate,
    required this.albumId,
    required this.type,
    required this.value,
    required this.discount,
    required this.maxDiscount,
    required this.minPurchaseValue,
    required this.minPurchaseTimes,
    required this.minAwayDays,
    required this.nextPurchase,
    required this.usingRules,
    required this.firstPurchase,
    required this.birthday,
    required this.isActive,
    required this.groups,
    required this.days,
  });

  Map<String, dynamic> toJson() => _$CreateDiscountParamsToJson(this);

  String name, target, startDate, endDate, albumId, type;

  int value,
      discount,
      maxDiscount,
      minPurchaseValue,
      minPurchaseTimes,
      minAwayDays;
  bool nextPurchase, usingRules, firstPurchase, birthday, isActive;

  List<String> groups, days;

  @override
  List<Object?> get props => [];
}
