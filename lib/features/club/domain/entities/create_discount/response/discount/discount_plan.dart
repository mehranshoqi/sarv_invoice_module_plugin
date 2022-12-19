import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../create_products_album/response/products_album/products_album.dart';

part 'discount_plan.g.dart';

@JsonSerializable(createToJson: false)
class DiscountPlan extends Equatable {
  final String name, target, type, id;
  final int? value, discount, maxDiscount, minPurchaseTimes, minAwayDays;
  final bool birthday, isActive;
  final String? albumId, createDate;
  final List<String> groups, days;
  final ProductsAlbum album;

  factory DiscountPlan.fromJson(Map<String, dynamic> data) =>
      _$DiscountPlanFromJson(data);

  DiscountPlan(
      this.name,
      this.target,
      this.type,
      this.id,
      this.value,
      this.discount,
      this.maxDiscount,
      this.minPurchaseTimes,
      this.minAwayDays,
      this.birthday,
      this.isActive,
      this.albumId,
      this.createDate,
      this.groups,
      this.days,
      this.album);

  @override
  List<Object?> get props =>
      [id, type, albumId, createDate, days, value, discount];
}
