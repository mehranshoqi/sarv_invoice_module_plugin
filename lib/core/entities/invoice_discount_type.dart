import '../constants/enums.dart';
import 'package:flutter/material.dart';

class InvoiceDiscountTypeModel {
  final InvoiceDiscountType type;
  final String label;
  final Widget child;

  InvoiceDiscountTypeModel(this.type, this.label, this.child);
}
