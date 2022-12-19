import 'package:flutter/material.dart';

import '../helpers/styles.dart';

class ModalTopLine extends StatelessWidget {
  const ModalTopLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
    child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: S.activeTextColor100(context),
          ),
          width: 144,
          height: 5,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
  );
}
