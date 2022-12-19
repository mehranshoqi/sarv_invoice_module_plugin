library sarv_invoice_module_plugin;

import 'package:flutter/material.dart';
import 'package:sarv_invoice_module_plugin/features/invoice/presentation/pages/sell/new_sell_invoice_page.dart';

class NewSellInvoiceModule extends StatelessWidget {
  const NewSellInvoiceModule({
    Key? key,
    required this.isPOS,
  }) : super(key: key);
  final bool isPOS;
  
  @override
  Widget build(BuildContext context) => NewSellInvoicePage();
}
