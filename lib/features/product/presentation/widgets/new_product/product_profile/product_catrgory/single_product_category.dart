import '../../../../../domain/entities/create_product_category/response/category/product_category.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/helpers/styles.dart';
import '../../../../../../../core/ui/b_big_chips.dart';

class SingleProductCategory extends StatelessWidget {
  const SingleProductCategory({
    Key? key,
    required this.category,
    required this.onSelect,
  }) : super(key: key);
  final bool selected = false;
  final ProductCategory category;
  final Function(ProductCategory category) onSelect;

  @override
  Widget build(BuildContext context) => BBigChips(
        bgColor: selected
            ? S.activeTextColor(context).withOpacity(.05)
            : Colors.transparent,
        borderColor: selected
            ? S.activeTextColor500(context)
            : S.activeTextColor300(context),
        onTap: () {
          onSelect(category);
          Navigator.pop(context);
        },
        child: Center(child: Text(category.name)),
        width: 180,
        height: 62,
        radius: 12,
      );
}
