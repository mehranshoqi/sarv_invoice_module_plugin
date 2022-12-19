import 'package:flutter/material.dart';

import '../helpers/styles.dart';
import 'close_button.dart';

class BAlertDialog extends StatelessWidget {
  const BAlertDialog({
    Key? key,
    required this.child,
    this.width = 400,
    this.height = 480,
    this.showCloseButton = false,
    this.margin = 18,
  }) : super(key: key);
  final Widget child;
  final double width, height, margin;
  final bool showCloseButton;

  @override
  Widget build(BuildContext context) => AlertDialog(
        insetPadding: const EdgeInsets.all(0),
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.all(margin),
        elevation: 0,
        content: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          width: width,
          height: height,
          decoration: S.bContainerDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showCloseButton) _closeButton(context),
              Expanded(child: child),
            ],
          ),
        ),
      );

  Widget _closeButton(BuildContext context) => const Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 22),
          child: CloseButtonWidget(),
        ),
      );
}
