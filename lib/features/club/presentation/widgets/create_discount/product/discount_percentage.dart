import '../../../../../../core/ui/b_input.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/helpers/styles.dart';

class DiscountPercentage extends StatelessWidget {
  const DiscountPercentage({
    Key? key,
    required this.onPercentageChanged,
  }) : super(key: key);
  final Function(String percentage) onPercentageChanged;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            Text(
              'درصد تخفیف',
              style:
                  S.t(context).headline5!.copyWith(fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 32),
            BInput(
              onChange: onPercentageChanged,
              placeholder: 'درصد تخفیف',
              width: 440,
            ),
          ],
        ),
      );
}
