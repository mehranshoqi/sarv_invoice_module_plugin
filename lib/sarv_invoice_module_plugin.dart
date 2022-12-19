library sarv_invoice_module_plugin;

import 'package:sarv_invoice_module_plugin/core/ui/base_widget.dart';

import 'core/injection/di.dart' as di;

import 'package:flutter/material.dart';
import 'package:sarv_invoice_module_plugin/features/invoice/presentation/pages/sell/new_sell_invoice_page.dart';

class NewSellInvoiceModule extends StatefulWidget {
  const NewSellInvoiceModule({
    Key? key,
    required this.isPOS,
  }) : super(key: key);
  final bool isPOS;

  @override
  State<NewSellInvoiceModule> createState() => _NewSellInvoiceModuleState();
}

class _NewSellInvoiceModuleState extends State<NewSellInvoiceModule> {
  @override
  void initState() {
    super.initState();
    di.configureDependencies();
  }

  @override
  Widget build(BuildContext context) => BaseWidget(
        Column(
          children: [
            Text('Debug version - ' + widget.isPOS.toString()),
            Expanded(child: NewSellInvoicePage()),
          ],
        ),
      );
}
