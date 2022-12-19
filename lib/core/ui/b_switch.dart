import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/styles.dart';

class BSwitch extends StatefulWidget {
  const BSwitch({required this.onChange, Key? key}) : super(key: key);

  final Function(bool b) onChange;

  @override
  State<BSwitch> createState() => _BSwitchState();
}

class _BSwitchState extends State<BSwitch> {
  bool value = true;

  @override
  Widget build(BuildContext context) => CupertinoSwitch(
        value: value,
        onChanged: (h) => setState(() {
          widget.onChange(h);
          value = !value;
        }),
        activeColor: S.primary(context),
      );
}
