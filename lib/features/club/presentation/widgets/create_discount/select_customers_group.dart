import '../../../domain/entities/create_customers_group/response/customers_group/customers_group.dart';
import '../../pages/customers_groups.dart';
import 'package:flutter/material.dart';

class SelectCustomersGroup extends StatelessWidget {
  const SelectCustomersGroup({
    Key? key,
    required this.onSelectGroups,
    this.selectSingleGroup = false,
    this.onSelectedSingleGroup,
  }) : super(key: key);
  final Function(List<CustomersGroup> selectedGroup) onSelectGroups;
  final bool selectSingleGroup;
  final Function(CustomersGroup selectedGroup)? onSelectedSingleGroup;

  @override
  Widget build(BuildContext context) => CustomersGroupsPage(
        title: 'انتخاب گروه مشتریان',
        onSelectGroups: onSelectGroups,
        onSelectedSingleGroup: onSelectedSingleGroup,
        selectSingleGroup: selectSingleGroup,
      );
}
