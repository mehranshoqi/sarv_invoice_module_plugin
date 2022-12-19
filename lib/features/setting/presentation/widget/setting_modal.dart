import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/ui/close_button.dart';

class SettingModal extends StatelessWidget {
  const SettingModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 85.w,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 26),
          _header(context),
        ],
      ),
    );
  }

  Widget _header(BuildContext context) => Row(
        children: [
          const SizedBox(width: 28),
          CloseButtonWidget(),
        ],
      );
}
