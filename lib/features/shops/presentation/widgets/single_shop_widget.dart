import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/config/routing/routes.dart';
import '../../../../core/constants/pref_keys.dart';
import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../domain/entities/create_store/response/store/store.dart';

class SingleShopWidget extends StatelessWidget {
  const SingleShopWidget(this.store, {Key? key}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => _selectShop(context),
        child: Container(
          decoration: S.bContainerDecoration(),
          padding: S.bContainerPadding(),
          height: 370,
          width: 320,
          child: Column(
            children: [
              const Spacer(),
              CircleAvatar(
                radius: 64,
                backgroundColor: S.activeTextColor100(context),
                child: Icon(
                  Icons.data_usage_rounded,
                  color: S.activeTextColor100(context),
                  size: 36,
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    store.name ?? 'f',
                    style: S.t(context).bodyText1,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    store.address ?? 'd',
                    style: S
                        .t(context)
                        .bodyText2!
                        .copyWith(color: S.activeTextColor500(context)),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text(store.phone ?? 'pp', style: S.t(context).caption),
                  const Spacer(),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor:
                        S.activeTextColor(context).withOpacity(.03),
                    child: const Icon(
                      Iconsax.arrow_left_2,
                      size: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  void _selectShop(BuildContext context) async {
    await sl<FlutterSecureStorage>()
        .write(key: Prefkeys.selectedStoreId, value: store.id);
    Navigator.pushNamed(context, Routes.home, arguments: store);
  }
}
