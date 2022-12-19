import 'package:flutter/material.dart';

import '../config/theme/colors.dart';
import 'close_button.dart';

class BModalSheet extends StatelessWidget {
  const BModalSheet({
    Key? key,
    required this.child,
    this.height = 600,
  }) : super(key: key);
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          color: AppColors.oSecondaryColor,
        ),
        // width: 100.h,
        height: height,
        child: Column(
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                CloseButtonWidget(),
              ],
            ),
            Expanded(child: child),
          ],
        ),
      );
}
