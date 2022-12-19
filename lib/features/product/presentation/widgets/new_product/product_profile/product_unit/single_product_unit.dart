import 'package:flutter/material.dart';

import '../../../../../../../core/helpers/styles.dart';
import '../../../../../../../core/ui/b_big_chips.dart';
import '../../../../../domain/entities/create_unit/response/product_unit/product_unit.dart';

class SingleProductUnit extends StatelessWidget {
  const SingleProductUnit({
    Key? key,
    required this.onSelectProductUnit,
    required this.productUnit,
  }) : super(key: key);
  final bool selected = false;

  final ProductUnit productUnit;
  final Function(ProductUnit selectedUnit) onSelectProductUnit;

  @override
  Widget build(BuildContext context) => BBigChips(
        bgColor: selected
            ? S.activeTextColor(context).withOpacity(.05)
            : Colors.transparent,
        borderColor: selected
            ? S.activeTextColor500(context)
            : S.activeTextColor300(context),
        onTap: () {
          onSelectProductUnit(productUnit);
          Navigator.pop(context);
        },
        child: Center(child: Text(productUnit.name)),
        width: 180,
        height: 62,
        radius: 12,
      );
}
