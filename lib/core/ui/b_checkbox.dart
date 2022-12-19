import 'package:flutter/material.dart';

import '../helpers/styles.dart';

class BCheckbox extends StatefulWidget {
  BCheckbox({
    Key? key,
    required this.onChange,
    required this.active,
  }) : super(key: key);
  final Function(bool value) onChange;

  bool active;

  @override
  State<BCheckbox> createState() => _BCheckboxState();
}

class _BCheckboxState extends State<BCheckbox> {
  @override
  Widget build(BuildContext context) => ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 24, height: 24),
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all<Color>(
              widget.active ? S.primary(context) : Colors.transparent,
            ),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                  color: widget.active
                      ? S.primary(context)
                      : S.activeTextColor300(context),
                ),
              ),
            ),
          ),
          onPressed: () {
            setState(() => widget.active = !widget.active);
            widget.onChange(widget.active);
          },
          child: AnimatedOpacity(
            opacity: widget.active ? 1 : 0,
            duration: const Duration(milliseconds: 240),
            child: const Icon(
              Icons.done,
              color: Colors.white,
              size: 12,
            ),
          ),
        ),
      );
}
