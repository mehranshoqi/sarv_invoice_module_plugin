import 'package:flutter/material.dart';

import '../widgets/customers.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(28),
        child: CustomersWidget(
          onSelectCustomer: (_) {},
          dialog: false,
        ),
      );
}
