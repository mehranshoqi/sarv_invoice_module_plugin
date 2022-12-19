import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/ui/b_modal_sheet.dart';
import 'set_warehouses.dart';

class SetWarehouseModal extends StatelessWidget {
  const SetWarehouseModal({
    Key? key,
    required this.productId,
  }) : super(key: key);
  final String productId;

  @override
  Widget build(BuildContext context) => BModalSheet(
        height: 80.w,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SetWarehouses(productId: productId),
        ),
      );
}
