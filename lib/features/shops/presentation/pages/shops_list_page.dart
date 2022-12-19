import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/config/theme/colors.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../../../core/services/user.dart';
import '../../../../core/ui/b_loading.dart';
import '../../../../core/ui/b_text_button.dart';
import '../../../../core/ui/b_toast.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_store/response/store/store.dart';
import '../controller/get_store/cubit.dart';
import '../controller/get_store/state.dart';
import '../widgets/new_shop_form.dart';
import '../widgets/single_shop_widget.dart';

class ShopsListPage extends StatefulWidget {
  const ShopsListPage({Key? key}) : super(key: key);

  @override
  State<ShopsListPage> createState() => _ShopsListPageState();
}

class _ShopsListPageState extends State<ShopsListPage> {
  late GetStoresCubit _getStoresCubit;
  final List<Store> stores = [];

  @override
  void initState() {
    _getStoresCubit = sl<GetStoresCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
        color: AppColors.oSecondaryColor,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Transform.scale(
                scale: 1.4,
                child: Opacity(opacity: .65, child: Image.asset(Assets.dotBg)),
              ),
            ),
            _body(context),
          ],
        ),
      );

  Widget _body(BuildContext context) => Positioned.fill(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 28),
          width: 100.w,
          height: 100.w,
          child: Column(
            children: [
              const Spacer(),
              _header(context),
              const Spacer(),
              _shopsList(context),
            ],
          ),
        ),
      );

  Widget _header(BuildContext context) => Row(
        children: [
          SizedBox(width: 5.w),
          Text(
            'انتخاب فروشگاه',
            style:
                S.bodyText1Bold(context).copyWith(fontWeight: FontWeight.w900),
          ),
          const Spacer(),
          // const Spacer(),
          // BButton(
          //   label: '+ افزودن فروشگاه',
          //   onTap: () => _showNewShopForm(context),
          // ),

          BTextButton(
            label: 'خروج از حساب',
            smaller: true,
            onTap: () {
              UserService.loggedOut();
              // Todo - restart.
            },
          ),
          SizedBox(width: 5.w),
        ],
      );

  Widget _shopsList(BuildContext context) => Expanded(
        flex: 10,
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => _getStoresCubit..getStoresF(NoParams()),
            child: BlocConsumer<GetStoresCubit, GetStoresState>(
              listener: (context, state) => state.maybeWhen(
                orElse: () => null,
                error: (err) => BToast.success(err.errorReason!.first),
              ),
              builder: (context, state) => state.maybeWhen(
                orElse: () => const BLoading(),
                done: (res) => Wrap(
                  direction: Axis.horizontal,
                  spacing: 36,
                  runSpacing: 30,
                  children: [
                    for (Store store in res.data!.stores)
                      SingleShopWidget(store)
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  void _showNewShopForm(BuildContext context) => showMaterialModalBottomSheet(
        context: context,
        builder: (_) => NewShopForm(
          onCreateStore: (newStore) => setState(() => stores.add(newStore)),
        ),
      );
}
