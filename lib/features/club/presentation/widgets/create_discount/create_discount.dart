import 'dart:convert';
import 'dart:math';

import '../../../../../core/constants/pref_keys.dart';
import '../../../../splash/domain/entities/init/response/discount_plan_rules/discount_plan_rules.dart';
import '../../../../splash/domain/entities/init/response/init_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/constants/enums.dart';
import '../../../../../core/entities/invoice_discount_type.dart';
import '../../../../../core/helpers/styles.dart';
import '../../../../../core/injection/di.dart';
import '../../../../../core/ui/b_modal_sheet.dart';
import '../../../domain/entities/create_discount/params/params.dart';
import 'invoice/invoice_discount_type.dart';
import 'overview.dart';
import 'pageview_controllers.dart';
import 'product/discount_percentage.dart';
import 'product/select_products_album.dart';
import 'rules.dart';
import 'select_customers_group.dart';
import 'select_discount_type.dart';
import 'select_disocount_period.dart';

// ignore: must_be_immutable
class CreateDiscountPage extends StatefulWidget {
  const CreateDiscountPage({Key? key}) : super(key: key);

  @override
  State<CreateDiscountPage> createState() => _CreateDiscountPageState();
}

class _CreateDiscountPageState extends State<CreateDiscountPage> {
  final PageController _productPageController = PageController(initialPage: 0),
      _invoicePageController = PageController(initialPage: 0);
  int productPageIndex = 0, invoicePageIndex = 0;
  discountTypes? selectedDiscountType;
  InvoiceDiscountTypeModel? selectedInvoiceDiscountType;
  List<DiscountPlanRule> _discountRules = [];
  final CreateDiscountParams _params = CreateDiscountParams(
    name: '',
    target: '',
    startDate: '',
    endDate: '',
    albumId: '',
    type: '',
    value: 0,
    discount: 0,
    maxDiscount: 0,
    minPurchaseValue: 0,
    minPurchaseTimes: 0,
    minAwayDays: 0,
    nextPurchase: false,
    usingRules: false,
    firstPurchase: false,
    birthday: false,
    isActive: false,
    groups: [],
    days: [],
  );

  @override
  void initState() {
    super.initState();
    _getDiscountPlanRules();
  }

  @override
  Widget build(BuildContext context) => BModalSheet(
        height: max(600, 84.w),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              //* controllers.
              AnimatedOpacity(
                opacity: selectedDiscountType != null ? 1 : 1,
                duration: const Duration(milliseconds: 330),
                child: DiscountPageViewControllers(
                  selectedDiscountType: selectedDiscountType,
                  hNext: _hNextPage,
                  hPrev: _hPrevPage,
                  vNext: _vNextPage,
                  vPrev: _vPrevPage,
                  invoiceActivePageIndex: invoicePageIndex,
                  productActivePageIndex: productPageIndex,
                  createDiscountParams: _params,
                ),
              ),
              const SizedBox(width: 16),
              VerticalDivider(
                indent: 8.w,
                endIndent: 8.w,
                color: S.activeTextColor100(context),
              ),
              const SizedBox(width: 16),
              Expanded(
                //* invoice flow.
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _invoicePageController,
                  scrollDirection: Axis.vertical,
                  onPageChanged: (idx) =>
                      setState(() => invoicePageIndex = idx),
                  children: [
                    //* product flow.
                    PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _productPageController,
                      scrollDirection: Axis.vertical,
                      onPageChanged: (idx) =>
                          setState(() => productPageIndex = idx),
                      children: [
                        SelectDiscountType(
                          productNextPage: _hNextPage,
                          invoiceNextPage: _vNextPage,
                          onSelectDiscountType: (selectedType) => setState(
                              () => selectedDiscountType = selectedType),
                          selectedType: selectedDiscountType,
                          onSelectType: (targetType) =>
                              _params.target = targetType,
                        ),
                        _selectCustomersGroup(context),
                        _selectPeriod(context),
                        SelectProductsAlbum(
                          onSelectAlbum: (album) => _params.albumId = album.id,
                        ),
                        DiscountPercentage(
                          onPercentageChanged: (percentage) {
                            _params.discount = int.parse(percentage);
                          },
                        ),
                        _rules(context),
                        // _overView(context),
                      ],
                    ),
                    _selectCustomersGroup(context),
                    _selectPeriod(context),
                    SelectInvoiceDiscountType(
                      productNextPage: _hNextPage,
                      invoiceNextPage: _vNextPage,
                      onSelectDiscountType: (selectedType) => setState(
                          () => selectedInvoiceDiscountType = selectedType),
                      selectedType: selectedInvoiceDiscountType,
                    ),
                    _rules(context),
                    // _overView(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _selectCustomersGroup(BuildContext context) => SelectCustomersGroup(
        onSelectGroups: (selectedCustomerGroups) {
          _params.groups = (selectedCustomerGroups.map((g) => g.id!).toList());
        },
      );

  Widget _selectPeriod(BuildContext context) => SelectDiscountPeriod(
        onSelectPeriod: (days, startDate, endDate) {
          _params.startDate = startDate;
          _params.endDate = endDate;
          _params.days = days;
          _nextStep(context);
        },
      );

  Widget _rules(BuildContext context) => DiscountRules(
        rules: _discountRules,
        // Todo.
      );

  Widget _overView(BuildContext context) => CreateDiscountOverview();

  void _hNextPage() => _productPageController.nextPage(
      duration: const Duration(milliseconds: 320), curve: Curves.easeIn);

  void _hPrevPage() => _productPageController.previousPage(
      duration: const Duration(milliseconds: 290), curve: Curves.easeIn);

  void _vNextPage() => _invoicePageController.nextPage(
      duration: const Duration(milliseconds: 320), curve: Curves.easeIn);

  void _vPrevPage() => _invoicePageController.previousPage(
      duration: const Duration(milliseconds: 290), curve: Curves.easeIn);

  void _nextStep(BuildContext context) =>
      selectedDiscountType == discountTypes.product
          ? _hNextPage()
          : _vNextPage();

  void _getDiscountPlanRules() async {
    final _st = sl<FlutterSecureStorage>();
    final String? strMap = await _st.read(key: Prefkeys.initResponse);
    final Map<String, dynamic> initData = jsonDecode(strMap!);
    final InitResponse init = InitResponse.fromJson(initData);
    setState(() => _discountRules = init.discountPlanRules);
  }
}
