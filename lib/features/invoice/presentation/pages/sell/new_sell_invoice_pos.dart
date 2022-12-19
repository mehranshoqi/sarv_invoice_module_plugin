// import 'dart:math';

// import 'package:android_pos/android_pos.dart';
// import 'package:expandable/expandable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:shamsi_date/shamsi_date.dart';
// import 'package:sizer/sizer.dart';

// import '../../../../../core/config/routing/routes.dart';
// import '../../../../../core/config/theme/colors.dart';
// import '../../../../../core/constants/pref_keys.dart';
// import '../../../../../core/helpers/styles.dart';
// import '../../../../../core/injection/di.dart';
// import '../../../../../core/ui/b_button.dart';
// import '../../../../../core/ui/b_checkbox.dart';
// import '../../../../../core/ui/b_input.dart';
// import '../../../../../core/ui/b_loading.dart';
// import '../../../../../core/ui/b_toast.dart';
// import '../../../../club/domain/entities/get_invoice_discount/params/params.dart';
// import '../../../../club/domain/entities/get_invoice_discount/response/plan/invoice_plan.dart';
// import '../../../../club/domain/entities/get_product_discounts/params/params.dart';
// import '../../../../club/domain/entities/get_product_discounts/response/plan/product_discount.dart';
// import '../../../../club/presentation/controllers/get_invoice_discount/cubit.dart';
// import '../../../../club/presentation/controllers/get_invoice_discount/state.dart';
// import '../../../../club/presentation/controllers/get_product_discount/cubit.dart';
// import '../../../../club/presentation/controllers/get_product_discount/state.dart';
// import '../../../../customer/domain/entities/create_customer/response/customer/customer.dart';
// import '../../../../customer/presentation/widgets/customers.dart';
// import '../../../domain/entities/create_buy_invoice/params/buy_invoice_product/buy_invoice_product.dart';
// import '../../../domain/entities/create_marketer/response/marketer/marketer.dart';
// import '../../../domain/entities/create_sell_invoice/params/params.dart';
// import '../../../domain/entities/create_sell_invoice/params/sell_invoice_product/sell_invoice_product.dart';
// import '../../controllers/create_sell_invoice/cubit.dart';
// import '../../controllers/create_sell_invoice/state.dart';
// import '../../widgets/buy/new_invoice/add_product_to_invoice_form.dart';
// import '../../widgets/buy/new_invoice/products_table.dart';
// import '../../widgets/marketer/marketers.dart';

// class NewSellInvoicePOS extends StatefulWidget {
//   const NewSellInvoicePOS({Key? key}) : super(key: key);

//   @override
//   State<NewSellInvoicePOS> createState() => _NewSellInvoicePOSState();
// }

// class _NewSellInvoicePOSState extends State<NewSellInvoicePOS> {
//   Customer? selectedCustomer;
//   Marketer? _selectedMarketer;
//   final List<BuyInvoiceProduct> _products = [];
//   final List<ProductDiscount> _productsDiscountsList = [],
//       _selectedProductsDiscountList = [];
//   final List<InvoicePlan> _invoicePlans = [], _selectedInvoicePlans = [];
//   int _invoicePayAmount = 0;
//   bool showCashOption = false;
//   final _androidPosPlugin = AndroidPos();
//   final ExpandableController _expandableController = ExpandableController();
//   final TextEditingController _customerController = TextEditingController(),
//       _marketerController = TextEditingController(),
//       _posAmountController = TextEditingController(),
//       _cashAmountController = TextEditingController();

//   late GetInvoiceDiscountsCubit _getInvoiceDiscountsCubit;
//   late GetProductDiscountCubit _getProductDiscountCubit;
//   late CreateSellInvoiceCubit _createSellInvoiceCubit;

//   @override
//   void initState() {
//     _getInvoiceDiscountsCubit = sl<GetInvoiceDiscountsCubit>();
//     _getProductDiscountCubit = sl<GetProductDiscountCubit>();
//     _createSellInvoiceCubit = sl<CreateSellInvoiceCubit>();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: SafeArea(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 18),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 32),
//                   _title(context),
//                   const SizedBox(height: 28),
//                   _dateAndInvoiceId(context),
//                   const SizedBox(height: 48),
//                   _productsSection(context),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );

//   Widget _title(BuildContext context) => Row(
//         children: [
//           Expanded(child: Divider(color: S.activeTextColor200(context))),
//           const SizedBox(width: 32),
//           Text(
//             'فاکتور جدید',
//             style:
//                 S.t(context).headline6!.copyWith(fontWeight: FontWeight.w900),
//           ),
//           const SizedBox(width: 32),
//           Expanded(child: Divider(color: S.activeTextColor200(context))),
//         ],
//       );

//   Widget _buyer(BuildContext context) => Stack(
//         children: [
//           BInput(
//             onChange: (t) {},
//             expanded: true,
//             controller: _customerController,
//             placeholder: 'خریدار',
//           ),
//           Positioned.fill(
//             child: InkWell(
//                 onTap: () => _showCustomers(context), child: const SizedBox()),
//           ),
//         ],
//       );

//   void _showCustomers(BuildContext context) => showDialog(
//         context: context,
//         builder: (BuildContext _) => CustomersWidget(
//           boxMargin: 8,
//           onSelectCustomer: (customer) {
//             setState(() {
//               selectedCustomer = customer;
//               _customerController.text = customer.phoneNumber;
//             });
//             _getInvoicePlans(context, customer.id);
//           },
//         ),
//       );

//   Widget _marketer(BuildContext context) => Stack(
//         children: [
//           BInput(
//             onChange: (t) {},
//             expanded: true,
//             controller: _marketerController,
//             placeholder: 'بازاریاب',
//           ),
//           Positioned.fill(
//             child: InkWell(
//               onTap: () => _showMarketers(context),
//               child: const SizedBox(),
//             ),
//           ),
//         ],
//       );

//   void _showMarketers(BuildContext context) => showDialog(
//         context: context,
//         builder: (BuildContext _) => MarketersWidget(
//           dialog: true,
//           onSelectMarketer: (marketer) => setState(() {
//             _selectedMarketer = marketer;
//             _marketerController.text = marketer.name;
//           }),
//         ),
//       );

//   Widget _dateAndInvoiceId(BuildContext context) {
//     Jalali j = Jalali.fromDateTime(DateTime.now());
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         // Column(
//         //   crossAxisAlignment: CrossAxisAlignment.start,
//         //   children: [
//         //     Text(
//         //       'شماره فاکتور',
//         //       style: S.captionBold(context),
//         //     ),
//         //     Text(
//         //       '۳۲۴۲۳۴۲۴',
//         //       style: S.bodyText1Bold(context),
//         //     )
//         //   ],
//         // ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'تاریخ',
//               style: S.captionBold(context),
//             ),
//             const SizedBox(height: 2),
//             Text(
//               j.year.toString() +
//                   '/' +
//                   j.month.toString() +
//                   '/' +
//                   j.day.toString(),
//               style: S.bodyText1Bold(context),
//             )
//           ],
//         ),
//         // BInput(
//         //   onChange: (t) {},
//         //   placeholder: 'شماره فاکتور',
//         //   width: 30.w,
//         //   height: 44,
//         // ),
//         // BInput(
//         //   onChange: (t) {},
//         //   placeholder: 'تاریخ',
//         //   width: 30.w,
//         //   height: 44,
//         // ),
//       ],
//     );
//   }

//   Widget _productsSection(BuildContext context) => Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           _buyer(context),
//           const SizedBox(height: 24),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Text(
//               'لیست کالا ها',
//               style:
//                   S.t(context).bodyText1!.copyWith(fontWeight: FontWeight.w900),
//             ),
//           ),
//           const SizedBox(height: 12),
//           NewBuyInvoiceProductsTable(invoiceProducts: _products),
//           const SizedBox(height: 24),
//           AddProductToInvoiceForm(
//             onAddNewInvoiceProduct: (newInvoiceProduct) {
//               _getProductDiscounts(context, newInvoiceProduct.productId);
//               setState(() => _products.add(newInvoiceProduct));
//               _getInvoicePayAmount(context);
//             },
//           ),
//           const SizedBox(height: 48),
//           _marketer(context),
//           const SizedBox(height: 64),
//           _extra(),
//           const SizedBox(height: 12),
//           _productsDiscounts(context),
//           const SizedBox(height: 12),
//           _invoicePlansAndDiscount(context),
//           const SizedBox(height: 32),
//           const Divider(),
//           const SizedBox(height: 32),
//           _price(context),
//           const SizedBox(height: 56),
//           BlocProvider(
//             create: (context) => _createSellInvoiceCubit,
//             child: BlocConsumer<CreateSellInvoiceCubit, CreateSellInvoiceState>(
//               listener: (context, state) => state.maybeWhen(
//                 orElse: () => null,
//                 error: (err) => BToast.success(err.errorReason?.first),
//                 done: (res) {
//                   _androidPosPlugin.startPaymentTxn(
//                     'STORE_NAME',
//                     _posAmountController.text.trim() + '0',
//                     (model) {
//                       Navigator.pushNamed(
//                         context,
//                         Routes.payStatus,
//                         arguments: model,
//                       );
//                     },
//                   );
//                   return;
//                 },
//               ),
//               builder: (context, state) => BButton(
//                 label: 'پرداخت',
//                 onTap: () => _callPayService(context),
//                 minWidth: double.infinity,
//                 loading: state is CreateSellInvoiceStateLoading,
//                 height: 48,
//               ),
//             ),
//           ),
//           const SizedBox(height: 28),
//         ],
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
//           Column(
//             children: [
//               BInput(
//                 onChange: (t) {},
//                 height: 100,
//                 expanded: true,
//                 placeholder: 'توضیحات فاکتور',
//                 textAlign: TextAlign.right,
//               ),
//               const SizedBox(height: 16),
//               Column(
//                 children: [
//                   BInput(
//                     expanded: true,
//                     onChange: (t) {},
//                     placeholder: 'کرایه / اضافات',
//                     inputType: TextInputType.number,
//                   ),
//                   const SizedBox(height: 16),
//                   BInput(
//                     expanded: true,
//                     onChange: (t) => _calculateTax(context, t),
//                     inputType: TextInputType.number,
//                     placeholder: 'مالیات بر ارزش افزوده',
//                   ),
//                   // const SizedBox(height: 16),
//                   // BInput(
//                   //   expanded: true,
//                   //   onChange: (t) {},
//                   //   placeholder: 'تخفیف',
//                   // ),
//                 ],
//               ),
//             ],
//           ),
//           const SizedBox(height: 40),
//         ],
//       );

//   Widget _price(BuildContext context) => SizedBox(
//         width: 100.w,
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Text('جمع کل فاکتور', style: S.h6Bold(context)),
//                 const Spacer(),
//                 Text(
//                   _invoicePayAmount.toString(),
//                   style: S
//                       .t(context)
//                       .headline4!
//                       .copyWith(fontWeight: FontWeight.w900),
//                 ),
//                 const SizedBox(width: 5),
//                 Text('تومان', style: S.bodyText1Bold(context)),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     const Text('کارتخوان'),
//                     const SizedBox(width: 12),
//                     Expanded(
//                       child: Stack(
//                         children: [
//                           BInput(
//                             onChange: (t) => _onPosAmountChange(t),
//                             controller: _posAmountController,
//                             inputType: TextInputType.number,
//                             placeholder: 'تومان',
//                             width: 100.w,
//                           ),
//                           Positioned.fill(
//                               child: Container(color: Colors.transparent))
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 12),
//                 ExpandableNotifier(
//                   controller: _expandableController,
//                   child: ScrollOnExpand(
//                     scrollOnExpand: true,
//                     scrollOnCollapse: false,
//                     child: ExpandablePanel(
//                       theme: ExpandableThemeData(
//                         headerAlignment: ExpandablePanelHeaderAlignment.center,
//                         tapBodyToCollapse: true,
//                         iconColor: S.activeTextColor800(context),
//                         iconSize: 18,
//                         hasIcon: false,
//                         iconPadding: EdgeInsets.zero,
//                       ),
//                       header: const SizedBox(),
//                       collapsed: const SizedBox(),
//                       expanded: Row(
//                         children: [
//                           const Text('وجه نقد'),
//                           const SizedBox(width: 12),
//                           Expanded(
//                             child: BInput(
//                               controller: _cashAmountController,
//                               onChange: (t) => _onCashAmountChange(t, context),
//                               placeholder: 'تومان',
//                               inputType: TextInputType.number,
//                               expanded: true,
//                             ),
//                           ),
//                         ],
//                       ),
//                       builder: (_, collapsed, expanded) => Expandable(
//                         collapsed: collapsed,
//                         expanded: expanded,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 ConstrainedBox(
//                   constraints:
//                       const BoxConstraints.tightFor(width: 28, height: 28),
//                   child: ElevatedButton(
//                     style: ButtonStyle(
//                       padding: MaterialStateProperty.all(EdgeInsets.zero),
//                       backgroundColor: MaterialStateProperty.all<Color>(
//                         Colors.transparent,
//                       ),
//                       elevation: MaterialStateProperty.all(0),
//                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                         RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(1000),
//                           side: BorderSide(color: S.activeTextColor(context)),
//                         ),
//                       ),
//                     ),
//                     onPressed: () {
//                       setState(() => showCashOption = !showCashOption);
//                       _expandableController.value = showCashOption;
//                     },
//                     child: Icon(
//                       showCashOption ? Iconsax.minus : Iconsax.add,
//                       size: 20,
//                       color: S.activeTextColor(context),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );

//   Widget _invoicePlansAndDiscount(BuildContext context) => BlocProvider(
//         create: (context) => _getInvoiceDiscountsCubit,
//         child: BlocConsumer<GetInvoiceDiscountsCubit, GetInvoiceDiscountsState>(
//           listener: (context, state) => state.maybeWhen(
//             orElse: () => null,
//             error: (err) => BToast.error(err.errorReason?.first),
//             done: (response) {
//               _invoicePlans.addAll(response.data!.plans);
//               return;
//             },
//           ),
//           builder: (context, state) => state.maybeWhen(
//             orElse: () => const SizedBox(),
//             loading: () => const BLoading(),
//             done: (response) {
//               return Column(
//                 children: [
//                   for (InvoicePlan plan in response.data!.plans)
//                     _singleInvoicePlan(context, plan)
//                 ],
//               );
//             },
//           ),
//         ),
//       );

//   void _getInvoicePayAmount(BuildContext context) {
//     int _totalPrice = 0;
//     for (BuyInvoiceProduct product in _products)
//       _totalPrice += product.totalPriceWithDiscount ?? product.totalPrice!;

//     for (InvoicePlan plan in _invoicePlans) {
//       _totalPrice = _totalPrice - _getPlanValue(context, plan, false);
//     }
//     _posAmountController.text = _totalPrice.toString();
//     _invoicePayAmount = _totalPrice;
//   }

//   void _callPayService(BuildContext context) async {
//     _dismissKeybord(context);
//     final st = sl<FlutterSecureStorage>();
//     final String stockId = await st.read(key: Prefkeys.selectedStoreId) ?? '';

//     if (selectedCustomer?.id != null) {
//       _createSellInvoiceCubit.createBuyInvoiceF(
//         CreateSellInvoiceParams(
//           selectedCustomer!.id,
//           'cash',
//           [],
//           _products
//               .map(
//                 (p) => SellInvoiceProduct(
//                   p.productId,
//                   _selectedProductsDiscountList.map((e) {
//                     return e.productId == p.productId ? e.id : '';
//                   }).toList(),
//                   p.warehouseId,
//                   stockId,
//                   p.count,
//                   p.buyPrice,
//                 ),
//               )
//               .toList(),
//           _invoicePlans.map((element) => element.id).toList(),
//         ),
//       );
//     } else {
//       BToast.success('خریدار را انتخاب کنید.');
//     }
//     // Navigator.pushNamed(
//     //   context,
//     //   Routes.payStatus,
//     //   arguments: PosRespModel(),
//     // );
//     //
//   }

//   void _onPosAmountChange(String t) {}

//   void _onCashAmountChange(String t, BuildContext context) {
//     _getInvoicePayAmount(context);
//     if (t.isEmpty) {
//       _posAmountController.text = _invoicePayAmount.toString();
//     } else {
//       try {
//         final _cashAmount = int.parse(t);
//         if (_invoicePayAmount < _cashAmount) {
//           BToast.success('وجه نقد نمی تواند از مبلغ کل بیشتر باشد.');
//           return;
//         } else {
//           _posAmountController.text =
//               (_invoicePayAmount - _cashAmount).toString();
//         }
//       } catch (_) {
//         BToast.success('مبلغ وارد شده صحیح نیست!');
//       }
//     }
//   }

//   void _getInvoicePlans(BuildContext context, String customerId) {
//     _getInvoiceDiscountsCubit
//         .getInvoiceDiscountsF(GetInvoiceDiscountParams(customerId: customerId));
//   }

//   Widget _singleInvoicePlan(BuildContext context, InvoicePlan plan) => Row(
//         children: [
//           BCheckbox(
//             onChange: (active) {
//               if (active) {
//                 _invoicePlans.add(plan);
//                 _getInvoicePayAmount(context);
//               } else {
//                 _invoicePlans.remove(plan);
//                 _getInvoicePayAmount(context);
//               }
//               setState(() => plan.isActive = active);
//             },
//             active: plan.isActive,
//           ),
//           const SizedBox(width: 12),
//           Expanded(child: Text(plan.name)),
//           const SizedBox(width: 12),
//           Text(_getPlanValue(context, plan).toString()),
//         ],
//       );

//   int _getPlanValue(BuildContext context, InvoicePlan plan,
//       [bool update = true]) {
//     if (update) _getInvoicePayAmount(context);
//     final int _invoiceValue = _invoicePayAmount;
//     if (plan.value > _invoiceValue) {
//       return 0;
//     }
//     if (plan.maxDiscount != null && plan.maxDiscount! > 0 && plan.value > 0) {
//       int times = (_invoiceValue / plan.value).floor();
//       plan.discount = min(times * plan.discount, plan.maxDiscount!);
//     }
//     if (plan.type != 'value') {
//       return ((plan.discount * _invoiceValue) / 100).floor();
//     }
//     return plan.discount;
//   }

//   void _getProductDiscounts(BuildContext context, String productId) {
//     if (selectedCustomer == null) {
//       BToast.success('لطفا خریدار را وارد نمایید');
//       return;
//     } else {
//       _getProductDiscountCubit.getProductDiscountF(
//         GetProductDiscountParams(selectedCustomer!.id, productId),
//       );
//     }
//   }

//   Widget _productsDiscounts(BuildContext context) => BlocProvider(
//         create: (context) => _getProductDiscountCubit,
//         child: BlocConsumer<GetProductDiscountCubit, GetProductDiscountState>(
//           listener: (context, state) => state.maybeWhen(
//             orElse: () => null,
//             error: (err) => BToast.error(err.errorReason?.first),
//             done: (response) => setState(
//               () => _productsDiscountsList.addAll(response.data!.plans),
//             ),
//           ),
//           builder: (context, state) => state.maybeWhen(
//             orElse: () => const SizedBox(),
//             done: (res) => Column(
//               children: [
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     'تخفیفات',
//                     style: S
//                         .t(context)
//                         .bodyText1!
//                         .copyWith(fontWeight: FontWeight.w900),
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 if (_productsDiscountsList.isEmpty)
//                   const Text('تخفیفی برای کالا ها وجود ندارد')
//                 else
//                   for (ProductDiscount productDiscount
//                       in _productsDiscountsList)
//                     _singleProductDiscountWidget(context, productDiscount)
//               ],
//             ),
//           ),
//         ),
//       );

//   Widget _singleProductDiscountWidget(
//     BuildContext context,
//     ProductDiscount productDiscount,
//   ) {
//     final BuyInvoiceProduct _selectedInvoiceProduct = _products.firstWhere(
//       (invoiceProduct) => invoiceProduct.productId == productDiscount.productId,
//     );
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 2),
//       child: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8),
//             child: Row(
//               children: [
//                 BCheckbox(
//                   onChange: (active) => _onActivationProductDiscount(
//                     active,
//                     productDiscount,
//                     _selectedInvoiceProduct,
//                   ),
//                   // active: _selectedInvoiceProduct.totalDiscount != null,
//                   active: _selectedInvoiceProduct.totalDiscount != null &&
//                       _selectedProductsDiscountList.contains(productDiscount),
//                 ),
//                 const SizedBox(width: 12),
//                 Expanded(
//                   child: Text(
//                     productDiscount.name +
//                         ' '
//                             'برای'
//                             ' '
//                             '[ ${_selectedInvoiceProduct.name!} ]',
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 Text(
//                   _getProductDiscountValue(
//                           context, productDiscount, _selectedInvoiceProduct)
//                       .toString(),
//                 ),
//               ],
//             ),
//           ),
//           if (_selectedInvoiceProduct.totalDiscount != null &&
//               !_selectedProductsDiscountList.contains(productDiscount))
//             Positioned.fill(
//               child: Container(
//                 color: AppColors.lightThemeBgColor.withOpacity(.4),
//                 child: Divider(
//                   indent: 36,
//                   color: S.activeTextColor500(context),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }

//   int _getProductDiscountValue(
//     BuildContext context,
//     ProductDiscount productDiscount,
//     BuyInvoiceProduct selectedInvoiceProduct,
//   ) {
//     final int _invoiceProductDiscountValue =
//         selectedInvoiceProduct.totalPrice! -
//             ((100 - productDiscount.discount) /
//                     100 *
//                     selectedInvoiceProduct.totalPrice!)
//                 .floor();

//     return _invoiceProductDiscountValue;
//   }

//   void _onActivationProductDiscount(
//     bool active,
//     ProductDiscount productDiscount,
//     BuyInvoiceProduct selectedInvoiceProduct,
//   ) {
//     final int _productDiscountValue = _getProductDiscountValue(
//       context,
//       productDiscount,
//       selectedInvoiceProduct,
//     );

//     if (active) {
//       selectedInvoiceProduct.totalPriceWithDiscount =
//           selectedInvoiceProduct.totalPrice! - _productDiscountValue;
//       selectedInvoiceProduct.totalDiscount = _productDiscountValue;
//       _selectedProductsDiscountList.add(productDiscount);
//     } else {
//       _selectedProductsDiscountList.remove(productDiscount);
//       selectedInvoiceProduct.totalPriceWithDiscount =
//           selectedInvoiceProduct.totalDiscount = null;
//     }
//     _getInvoicePayAmount(context);
//     setState(() {});
//   }

//   void _dismissKeybord(BuildContext context) =>
//       FocusScope.of(context).unfocus();

//   void _calculateTax(BuildContext context, String t) {
//     // print('calculate tax');
//     // final int taxPercent = int.parse(t);
//     // final int taxAmount = (_invoicePayAmount / 100 * taxPercent).floor();
//     // print(taxAmount);
//     // _invoicePayAmount += taxAmount;
//     // setState(() {});
//   }
// }
