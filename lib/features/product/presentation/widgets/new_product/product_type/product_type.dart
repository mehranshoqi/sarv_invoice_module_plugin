import 'package:flutter/material.dart';

import '../../../../../../core/helpers/styles.dart';
import '../../../../../../core/ui/b_big_chips.dart';
import '../../../../domain/entities/create_product_type/response/product_type/product_type.dart';
import 'new_product_type_form.dart';

// ignore: must_be_immutable
class ProductTypeWidget extends StatelessWidget {
  const ProductTypeWidget({
    Key? key,
    required this.nextPage,
    required this.selected,
    required this.productType,
    required this.onNewTypeCreated,
    this.createNewTypeButton = false,
  }) : super(key: key);
  final bool selected, createNewTypeButton;
  final Function(ProductType productType) nextPage, onNewTypeCreated;

  final ProductType productType;

  @override
  // ignore: deprecated_member_use
  Widget build(BuildContext context) => BBigChips(
        borderColor: createNewTypeButton
            ? Colors.grey.shade700.withOpacity(.05)
            : selected
                ? S.activeTextColor500(context)
                : S.activeTextColor300(context),
        bgColor: selected
            ? S.activeTextColor(context).withOpacity(.05)
            : createNewTypeButton
                ? Colors.grey.shade700.withOpacity(.09)
                : Colors.transparent,
        onTap: () => createNewTypeButton
            ? _showNewProductTypeForm(context)
            : nextPage(productType),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 4),
            Text(
              createNewTypeButton ? 'افزودن نوع کالا' : productType.name,
              style: S.t(context).headline6,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              createNewTypeButton
                  ? '+'
                  : (productType.productsCount?.toString() ?? '0') + ' کالا',
              style: S
                  .t(context)
                  .bodyText1!
                  .copyWith(color: S.activeTextColor600(context)),
            ),
          ],
        ),
      );

  void _showNewProductTypeForm(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => NewProductTypeForm(
          onNewTypeCreated: onNewTypeCreated,
        ),
      );
}
