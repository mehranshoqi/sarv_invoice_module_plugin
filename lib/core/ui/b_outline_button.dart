import 'package:flutter/material.dart';

import '../constants/global.dart';
import '../helpers/styles.dart';

class BOutlineButton extends StatelessWidget {
  BOutlineButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.disable = false,
    this.minWidth = 180,
  }) : super(key: key);

  final String label;
  final Function() onTap;
  final bool disable;
  final double minWidth;

  @override
  // ignore: deprecated_member_use
  Widget build(BuildContext context) => ConstrainedBox(
        constraints:
            BoxConstraints.tightFor(width: minWidth, height: G.bHeight),
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all<Color>(
              S.primary(context).withOpacity(.02),
            ),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: disable
                      ? Colors.grey
                      : S.primary(context).withOpacity(.8),
                ),
              ),
            ),
          ),
          onPressed: onTap,
          child: Text(
            label,
            style: S.t(context).bodyText1!.copyWith(
                  color: disable ? Colors.grey : S.primary(context),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      );
}
