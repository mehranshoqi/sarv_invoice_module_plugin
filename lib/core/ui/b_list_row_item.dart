import 'package:flutter/material.dart';

import '../helpers/styles.dart';

class BRowListItem extends StatelessWidget {
  const BRowListItem({
    required this.child,
    required this.onTap,
    required this.index,
    this.showArrow = true,
    this.selected = false,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final bool showArrow, selected;
  final Function() onTap;
  final int index;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 2),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
          decoration: BoxDecoration(
            color: selected
                ? S.primary(context).withOpacity(.05)
                : Colors.transparent,
            border: Border(
              bottom: BorderSide(color: S.activeTextColor100(context)),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: S.activeTextColor100(context),
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  (index + 1).toString(),
                  style: S
                      .t(context)
                      .caption!
                      .copyWith(color: S.activeTextColor(context)),
                ),
              ),
              const SizedBox(width: 28),
              child,
              if (showArrow)
                Icon(
                  Icons.keyboard_arrow_left_rounded,
                  color: S.activeTextColor300(context),
                )
            ],
          ),
        ),
      );
}
