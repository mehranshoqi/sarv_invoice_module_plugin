import 'package:flutter/material.dart';
import 'package:sarv_invoice_module_plugin/features/invoice/presentation/pages/sell/new_sell_invoice_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewSellInvoicePage(),
    );
  }
}


