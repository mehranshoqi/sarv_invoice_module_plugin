// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';

// import '../../../../../core/helpers/styles.dart';
// import '../../../../../core/ui/b_button.dart';
// import '../../../../../core/ui/b_input.dart';
// import '../../../../customer/domain/entities/create_customer/response/customer/customer.dart';
// import '../../../../customer/presentation/widgets/customers.dart';
// import '../../../domain/entities/create_buy_invoice/params/buy_invoice_product/buy_invoice_product.dart';
// import '../../../domain/entities/create_marketer/response/marketer/marketer.dart';
// import '../../widgets/buy/new_invoice/add_product_to_invoice_form.dart';
// import '../../widgets/buy/new_invoice/products_table.dart';
// import '../../widgets/marketer/marketers.dart';

// class NewSellInvoice extends StatefulWidget {
//   const NewSellInvoice({Key? key}) : super(key: key);

//   @override
//   State<NewSellInvoice> createState() => NewSellInvoiceState();
// }

// class NewSellInvoiceState extends State<NewSellInvoice> {
//   Customer? selectedCustomer;
//   Marketer? _selectedMarketer;
//   List<BuyInvoiceProduct> _products = [];
//   bool showCashOption = false;

//   @override
//   Widget build(BuildContext context) => _invoice(context);

//   Widget _invoice(BuildContext context) => Container(
//         decoration: S.bContainerDecoration(),
//         margin: const EdgeInsets.all(28),
//         padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
//         child: Column(
//           children: [
//             const SizedBox(height: 32),
//             _title(context),
//             const SizedBox(height: 28),
//             _dateAndInvoiceId(context),
//             const SizedBox(height: 56),
//             _invoiceProductsWithAddNewProductForm(context),
//           ],
//         ),
//       );

//   Widget _dateAndInvoiceId(BuildContext context) => Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           BInput(
//             onChange: (t) {},
//             placeholder: 'شماره فاکتور',
//             width: 280,
//           ),
//           BInput(
//             onChange: (t) {},
//             placeholder: 'تاریخ',
//             width: 280,
//           ),
//           // Text(
//           //   ' فاکتور  1439023563',
//           //   style: S
//           //       .bodyText1Bold(context)
//           //       .copyWith(color: S.activeTextColor700(context)),
//           // ),
//           // Text(
//           //   '12 شهریور 1401',
//           //   style: S
//           //       .bodyText1Bold(context)
//           //       .copyWith(color: S.activeTextColor700(context)),
//           // ),
//         ],
//       );

//   Widget _title(BuildContext context) => Row(
//         children: [
//           Expanded(child: Divider(color: S.activeTextColor200(context))),
//           const SizedBox(width: 48),
//           Text(
//             'فاکتور جدید',
//             style:
//                 S.t(context).headline6!.copyWith(fontWeight: FontWeight.w900),
//           ),
//           const SizedBox(width: 48),
//           Expanded(child: Divider(color: S.activeTextColor200(context))),
//         ],
//       );

//   Widget _buyerAndMarketer(BuildContext context) => Row(
//         children: [
//           Text(
//             'خریدار',
//             style:
//                 S.t(context).bodyText1!.copyWith(fontWeight: FontWeight.w900),
//           ),
//           const SizedBox(width: 16),
//           Stack(
//             children: [
//               BInput(
//                 onChange: (t) {},
//                 width: 280,
//               ),
//               Positioned.fill(
//                 child: InkWell(
//                   onTap: () => _showCustomers(context),
//                   child: Align(
//                     alignment: Alignment.centerRight,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16),
//                       child: Text(
//                         selectedCustomer?.phoneNumber.toString() ?? 'خریدار',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(width: 48),
//           Text(
//             'بازاریاب',
//             style:
//                 S.t(context).bodyText1!.copyWith(fontWeight: FontWeight.w900),
//           ),
//           const SizedBox(width: 16),
//           Stack(
//             children: [
//               BInput(
//                 onChange: (t) {},
//                 width: 280,
//               ),
//               Positioned.fill(
//                 child: InkWell(
//                   onTap: () => _showMarketers(context),
//                   child: Align(
//                     alignment: Alignment.centerRight,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16),
//                       child: Text(_selectedMarketer?.name ?? 'بازاریاب'),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       );

//   Widget _invoiceProductsWithAddNewProductForm(BuildContext context) =>
//       Expanded(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               _buyerAndMarketer(context),
//               const SizedBox(height: 48),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: Text(
//                   'لیست اقلام',
//                   style: S
//                       .t(context)
//                       .bodyText1!
//                       .copyWith(fontWeight: FontWeight.w900),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               NewBuyInvoiceProductsTable(invoiceProducts: _products),
//               const SizedBox(height: 24),
//               AddProductToInvoiceForm(
//                 onAddNewInvoiceProduct: (newInvoiceProduct) => setState(
//                   () => _products.add(newInvoiceProduct),
//                 ),
//               ),
//               const SizedBox(height: 64),
//               _extra(),
//               const SizedBox(height: 40),
//               const Divider(),
//               const SizedBox(height: 40),
//               _price(context),
//               const SizedBox(height: 80),
//               BButton(
//                 label: 'ثبت فاکتور',
//                 onTap: () {},
//                 minWidth: double.infinity,
//                 height: 48,
//               ),
//               const SizedBox(height: 64),
//             ],
//           ),
//         ),
//       );

//   Widget _extra() => Column(
//         children: [
//           Align(
//             alignment: Alignment.centerRight,
//             child: Text(
//               'سایر',
//               style:
//                   S.t(context).bodyText1!.copyWith(fontWeight: FontWeight.w900),
//             ),
//           ),
//           const SizedBox(height: 12),
//           Row(
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: BInput(
//                   onChange: (t) {},
//                   height: 182,
//                   placeholder: 'توضیحات فاکتور',
//                   textAlign: TextAlign.right,
//                 ),
//               ),
//               const SizedBox(width: 24),
//               Expanded(
//                 child: Column(
//                   children: [
//                     BInput(
//                       expanded: true,
//                       onChange: (t) {},
//                       placeholder: 'کرایه / اضافات',
//                     ),
//                     const SizedBox(height: 24),
//                     BInput(
//                       expanded: true,
//                       onChange: (t) {},
//                       placeholder: 'مالیات بر ارزش افزوده',
//                     ),
//                     const SizedBox(height: 24),
//                     BInput(
//                       expanded: true,
//                       onChange: (t) {},
//                       placeholder: 'تخفیف',
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 40),
//         ],
//       );

//   void _showCustomers(BuildContext context) => showDialog(
//         context: context,
//         builder: (BuildContext _) => CustomersWidget(
//           onSelectCustomer: (customer) => setState(
//             () => selectedCustomer = customer,
//           ),
//         ),
//       );

//   void _showMarketers(BuildContext context) => showDialog(
//         context: context,
//         builder: (BuildContext _) => MarketersWidget(
//           dialog: true,
//           onSelectMarketer: (marketer) => setState(
//             () => _selectedMarketer = marketer,
//           ),
//         ),
//       );

//   Widget _price(BuildContext context) => Column(
//         children: [
//           Row(
//             children: [
//               Text('جمع کل فاکتور', style: S.h6Bold(context)),
//               const SizedBox(width: 14),
//               Text(
//                 '1,340,000',
//                 style: S
//                     .t(context)
//                     .headline1!
//                     .copyWith(fontWeight: FontWeight.w900),
//               ),
//               const SizedBox(width: 14),
//               Text('تومان', style: S.h6Bold(context)),
//             ],
//           ),
//           const SizedBox(height: 20),
//           Row(
//             children: [
//               const Text('کارتخوان'),
//               const SizedBox(width: 12),
//               BInput(
//                 onChange: (t) {},
//                 placeholder: 'تومان',
//                 width: 280,
//               ),
//               Row(
//                 children: [
//                   const SizedBox(width: 20),
//                   ConstrainedBox(
//                     constraints:
//                         const BoxConstraints.tightFor(width: 28, height: 28),
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                         padding: MaterialStateProperty.all(EdgeInsets.zero),
//                         // backgroundColor: MaterialStateProperty.all<Color>(
//                         //   disable ? Colors.grey.shade300 : S.primary(context),
//                         // ),
//                         shape:
//                             MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(1000),
//                             side: BorderSide(color: S.activeTextColor(context)),
//                           ),
//                         ),
//                       ),
//                       onPressed: () =>
//                           setState(() => showCashOption = !showCashOption),
//                       child: Icon(
//                         showCashOption ? Iconsax.minus : Iconsax.add,
//                         size: 20,
//                         color: S.activeTextColor(context),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 20),
//                 ],
//               ),
//               if (showCashOption)
//                 Row(
//                   children: [
//                     const Text('وجه نقد'),
//                     const SizedBox(width: 12),
//                     BInput(
//                       onChange: (t) {},
//                       placeholder: 'تومان',
//                       width: 280,
//                     ),
//                   ],
//                 ),
//             ],
//           ),
//         ],
//       );
// }
