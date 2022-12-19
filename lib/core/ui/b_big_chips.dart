import 'package:flutter/material.dart';

class BBigChips extends StatelessWidget {
  const BBigChips({
    Key? key,
    this.bgColor,
    this.borderColor,
    required this.onTap,
    required this.child,
    this.width = 200,
    this.height = 76,
    this.radius = 6,
  }) : super(key: key);

  final Function() onTap;
  final Color? bgColor, borderColor;
  final Widget child;
  final double width, height, radius;

  @override
  // ignore: deprecated_member_use
  Widget build(BuildContext context) => ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: width, height: height),
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
          ),
          onPressed: onTap,
          child: Container(
            width: width,
            height: height,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(color: borderColor ?? Colors.grey.shade400),
              color: bgColor,
            ),
            child: child,
          ),
        ),
      );
}
