import '../../../../../core/ui/b_toast.dart';
import '../../../domain/entities/create_discount/params/params.dart';
import 'create_discount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/styles.dart';
import '../../../../../core/injection/di.dart';
import '../../../../../core/ui/b_button.dart';
import '../../../../../core/ui/b_checkbox.dart';
import '../../../../splash/domain/entities/init/response/discount_plan_rules/discount_plan_rules.dart';
import '../../controllers/create_discount/cubit.dart';
import '../../controllers/create_discount/state.dart';

class DiscountRules extends StatefulWidget {
  DiscountRules({
    Key? key,
    required this.rules,
  }) : super(key: key);
  final List<DiscountPlanRule> rules;

  @override
  State<DiscountRules> createState() => _DiscountRulesState();
}

class _DiscountRulesState extends State<DiscountRules>
    with AutomaticKeepAliveClientMixin<DiscountRules> {
  final List<DiscountPlanRule> _selectedRules = [];
  late CreateDiscountCubit _createDiscountCubit;

  @override
  void initState() {
    _createDiscountCubit = sl<CreateDiscountCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 32),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'قوانین',
                style: S
                    .t(context)
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (DiscountPlanRule rule in widget.rules)
                      _singleRule(context, rule, _selectedRules.contains(rule)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            BlocProvider(
              create: (context) => _createDiscountCubit,
              child: Align(
                alignment: Alignment.centerLeft,
                child: BlocConsumer<CreateDiscountCubit, CreateDiscountState>(
                  listener: (context, state) => state.maybeWhen(
                    orElse: () => null,
                    done: (res) {
                      Navigator.pop(context);
                    },
                    error: (err) => BToast.success(err.errorReason!.first),
                  ),
                  builder: (context, state) => BButton(
                    label: 'ایجاد سناریو تخفیف',
                    onTap: _createDiscount,
                    minWidth: 380,
                    loading: state is CreateDiscountStateLoading,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      );

  Widget _singleRule(
          BuildContext context, DiscountPlanRule rule, bool selected) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
        child: Row(
          children: [
            BCheckbox(
              onChange: (active) => active
                  ? _selectedRules.add(rule)
                  : _selectedRules.remove(rule),
              active: _selectedRules.contains(rule),
            ),
            const SizedBox(width: 20),
            Text(
              rule.title,
              style: S.bodyText2Bold(context),
            ),
          ],
        ),
      );

  @override
  bool get wantKeepAlive => true;

  void _createDiscount() {
    _createDiscountCubit.createDiscountF(
      CreateDiscountParams(
        name: 'discount 2',
        target: 'product',
        startDate: "06 Aug 2022",
        endDate: "12 Aug 2022",
        albumId: "63fd8175-6fd4-4f68-bb54-f1957e641091",
        type: "value",
        value: 10000,
        discount: 50,
        maxDiscount: 10000,
        minPurchaseValue: 10000,
        minPurchaseTimes: 10,
        minAwayDays: 20,
        nextPurchase: false,
        usingRules: false,
        firstPurchase: false,
        birthday: false,
        isActive: true,
        groups: [],
        days: ["friday", "wednesday"],
      ),
    );
  }
}
