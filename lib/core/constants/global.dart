import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../features/club/presentation/pages/albums.dart';
import '../../features/club/presentation/pages/customers_groups.dart';
import '../../features/club/presentation/pages/discounts.dart';
import '../../features/club/presentation/widgets/create_discount/invoice/alternating_input_form.dart';
import '../../features/club/presentation/widgets/create_discount/invoice/minimal_input_form.dart';

import '../../features/invoice/presentation/pages/sell/new_sell_invoice.dart';
import '../../features/invoice/presentation/widgets/marketer/marketers.dart';
import '../../features/product/presentation/pages/products_page.dart';

import '../entities/invoice_discount_type.dart';
import '../entities/products_list_header_cell.dart';
import '../entities/side_menu/side_menu_option.dart';
import '../entities/side_menu/side_menu_sub_option.dart';
import '../entities/week_day.dart';
import 'enums.dart';

/// Global Variables.
class G {
  /// Font Family
  static const String appFontFamily = 'IRANSans';

  /// New Product Titles.
  static List<String> newProductSteps = [
    'نوع کالا',
    // 'اطلاعات کتاب',
    'اطلاعات کالا',
    'اطلاعات انبار',
    'بازبینی',
  ];

  /// Home Side Menu Options.
  // static List<SideMenuOption> homeSideMenuOptions = [
  //   const SideMenuOption(
  //     'انبار',
  //     Iconsax.document,
  //     [
  //       SideMenuSubOption(
  //         'کالا ها',
  //         Iconsax.buy_crypto,
  //         ProductsPage(),
  //       ),
  //     ],
  //   ),
  //   const SideMenuOption(
  //     'خرید',
  //     Iconsax.buy_crypto,
  //     [
  //       SideMenuSubOption(
  //         'ایجاد فاکتور',
  //         Iconsax.buy_crypto,
  //         NewBuyInvoice(),
  //       ),
  //       SideMenuSubOption(
  //         'فاکتور برگشت خرید',
  //         Iconsax.buy_crypto,
  //         Text('sub option 20'),
  //       ),
  //       SideMenuSubOption(
  //         'فاکتور ها',
  //         Iconsax.buy_crypto,
  //         Text('sub option 30'),
  //       ),
  //       SideMenuSubOption(
  //         'فروشندگان',
  //         Iconsax.buy_crypto,
  //         SellersPage(),
  //       ),
  //     ],
  //   ),
  //   SideMenuOption(
  //     'فروش',
  //     Iconsax.empty_wallet_remove,
  //     [
  //       const SideMenuSubOption(
  //         'ایجاد فاکتور',
  //         Iconsax.empty_wallet_tick,
  //         NewSellInvoice(),
  //       ),
  //       SideMenuSubOption(
  //         'بازار یاب',
  //         Iconsax.empty_wallet_tick,
  //         MarketersWidget(
  //           onSelectMarketer: (_) {},
  //         ),
  //       ),
  //     ],
  //   ),
  //   SideMenuOption(
  //     'باشگاه مشتریان',
  //     Iconsax.people,
  //     [
  //       const SideMenuSubOption(
  //         'سناریو تخفیف',
  //         Iconsax.empty_wallet_tick,
  //         DiscountsPage(),
  //       ),
  //       SideMenuSubOption(
  //         'گروه مشتریان',
  //         Iconsax.group,
  //         CustomersGroupsPage(
  //           title: 'گروه مشتریان',
  //           onSelectGroups: (_) {},
  //         ),
  //       ),
  //       SideMenuSubOption(
  //         'آلبوم کالا ها',
  //         Iconsax.group,
  //         AlbumsPage(
  //           onSelectAlbum: (_) {},
  //         ),
  //       ),
  //     ],
  //   ),
  // ];

  static final List<Map<String, dynamic>> weekDaysMap = [
    {"key": "Saturday", "value": "saturday", "title": "شنبه"},
    {"key": "Sunday", "value": "sunday", "title": "یکشنبه"},
    {"key": "Monday", "value": "monday", "title": "دوشنبه"},
    {"key": "Tuesday", "value": "tuesday", "title": "سه شنبه"},
    {"key": "Wednesday", "value": "wednesday", "title": "چهارشنبه"},
    {"key": "Thursday", "value": "thursday", "title": "پنجشنبه"},
    {"key": "Friday", "value": "friday", "title": "جمعه"}
  ];

  static final List<WeekDay> weekDays = [
    for (Map<String, dynamic> data in weekDaysMap) WeekDay.fromJson(data)
  ];

  // static List<HomeSideMenuOption> homeSideMenuOptions = [
  // HomeSideMenuOption(
  //   label: 'خانه',
  //   icon: Iconsax.home_1,
  //   option: HomeSideMenuOptions.repositroyManagment,
  //   child: Text('home'),
  //   isMainOption: true,
  // ),
  // HomeSideMenuOption(
  //   label: 'کالا',
  //   icon: Iconsax.notification_circle,
  //   option: HomeSideMenuOptions.repositroyManagment,
  //   child: ProductsPage(),
  //   isMainOption: true,
  // ),
  ///* Buy
  // HomeSideMenuOption(
  //   label: 'خرید',
  //   icon: Iconsax.buy_crypto,
  //   option: HomeSideMenuOptions.buy,
  //   child: Text('child'),
  // ),
  // HomeSideMenuOption(
  //   label: 'مدیریت انبار',
  //   icon: Iconsax.activity,
  //   option: HomeSideMenuOptions.repositroyManagment,
  //   child: Text('child'),
  // ),

  // HomeSideMenuOption(
  //   label: 'فروش',
  //   icon: Iconsax.money_2,
  //   option: HomeSideMenuOptions.sell,
  //   child: Text('child'),
  // ),
  // HomeSideMenuOption(
  //   label: 'عملیات مالی',
  //   icon: Iconsax.buy_crypto4,
  //   option: HomeSideMenuOptions.financial,
  //   child: Text('child'),
  // ),
  // HomeSideMenuOption(
  //   label: 'گزارشات',
  //   icon: Iconsax.document,
  //   option: HomeSideMenuOptions.reports,
  //   child: Text('child'),
  // ),
  // ];

  static const double bHeight = 56;

  static List<ProductsListHeaderCell> productsListHeaderCells = [
    ProductsListHeaderCell(width: 90, title: 'ردیف', center: true),
    ProductsListHeaderCell(width: 120, title: 'نوع کالا'),
    ProductsListHeaderCell(width: 140, title: 'وضعیت'),
    ProductsListHeaderCell(width: 140, title: 'دسته بندی'),
    ProductsListHeaderCell(width: 160, title: 'کد کالا'),
    ProductsListHeaderCell(width: 210, title: 'نام کالا'),
    ProductsListHeaderCell(width: 120, title: 'سفارش مجدد'),
    ProductsListHeaderCell(width: 220, title: 'عملیات'),
  ];

  // static List<InvoiceDiscountTypeModel> invoiceDiscountTypes = [
  //   InvoiceDiscountTypeModel(
  //     InvoiceDiscountType.alternatingPercentage,
  //     'متناوب-درصدی',
  //     InvoiceDiscountAlternatingInputForm(isPercentage: true),
  //   ),
  //   InvoiceDiscountTypeModel(
  //     InvoiceDiscountType.alternatingValue,
  //     'متناوب-نقدی',
  //     InvoiceDiscountAlternatingInputForm(),
  //   ),
  //   InvoiceDiscountTypeModel(
  //     InvoiceDiscountType.minimalPercentage,
  //     'حداقلی-درصدی',
  //     InvoiceDiscountMinimalInputForm(isPercentage: true),
  //   ),
  //   InvoiceDiscountTypeModel(
  //     InvoiceDiscountType.minimalValue,
  //     'حداقلی-نقدی',
  //     InvoiceDiscountMinimalInputForm(),
  //   ),
  // ];
}
