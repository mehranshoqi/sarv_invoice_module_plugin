import 'package:flutter/material.dart';

import '../constants/global.dart';
import '../helpers/styles.dart';

// ignore: must_be_immutable
class BButton extends StatelessWidget {
  BButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.expanded = false,
    this.loading = false,
    this.disable = false,
    this.minWidth = 190,
    this.height = G.bHeight,
    this.bgColor,
    this.textColor = Colors.white,
  }) : super(key: key);
  final String label;
  bool disable, expanded, loading;
  double minWidth, height;
  Function() onTap;
  final Color? bgColor, textColor;

  @override
  Widget build(BuildContext context) => !expanded
      ? _button(context)
      : Row(children: [Expanded(child: _button(context))]);

  Widget _button(BuildContext context) => ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: minWidth, height: height),
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all<Color>(
              disable ? Colors.grey.shade300 : (bgColor ?? S.primary(context)),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: onTap,
          child: loading
              ? const SizedBox.square(
                  dimension: 16,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                )
              : Text(
                  label,
                  style: S.t(context).bodyText1!.copyWith(
                        color: disable ? Colors.grey.shade800 : textColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
        ),
      );
}
