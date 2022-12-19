import '../../../../../core/ui/b_button.dart';
import 'package:flutter/material.dart';

class CreateDiscountOverview extends StatelessWidget {
  const CreateDiscountOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Align(
            alignment: Alignment.centerLeft,
            child: BButton(
              label: 'ایجاد سناریو تخفیف',
              onTap: () {},
            ),
          ),
        ],
      );
}
