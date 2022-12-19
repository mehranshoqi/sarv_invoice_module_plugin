// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInvoiceDiscoutsResponse _$GetInvoiceDiscoutsResponseFromJson(
        Map<String, dynamic> json) =>
    GetInvoiceDiscoutsResponse(
      (json['plans'] as List<dynamic>)
          .map((e) => InvoicePlan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
