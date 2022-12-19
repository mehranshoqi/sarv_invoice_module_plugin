import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../../../core/ui/b_list_row_item.dart';
import '../../../../core/ui/b_loading.dart';
import '../../../../core/ui/b_text_button.dart';
import '../../../../core/ui/b_toast.dart';
import '../../../../core/usecases/usecases.dart';
import '../../domain/entities/create_customers_group/response/customers_group/customers_group.dart';
import '../controllers/get_customers_groups/cubit.dart';
import '../controllers/get_customers_groups/state.dart';
import '../widgets/customers_groups/new_customers_groups_form.dart';

class CustomersGroupsPage extends StatefulWidget {
  const CustomersGroupsPage({
    required this.title,
    required this.onSelectGroups,
    this.selectSingleGroup = false,
    this.onSelectedSingleGroup,
    Key? key,
  }) : super(key: key);
  final String title;
  final bool selectSingleGroup;
  final Function(CustomersGroup selectedGroup)? onSelectedSingleGroup;
  final Function(List<CustomersGroup> selectedList) onSelectGroups;

  @override
  State<CustomersGroupsPage> createState() => _CustomersGroupsPageState();
}

class _CustomersGroupsPageState extends State<CustomersGroupsPage>
    with AutomaticKeepAliveClientMixin<CustomersGroupsPage> {
  late GetCustomersGroupsCubit _getCustomersGroupsCubit;
  List<CustomersGroup> _selectedCustomersGroups = [], _groups = [];

  @override
  void initState() {
    _getCustomersGroupsCubit = sl<GetCustomersGroupsCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                Text(
                  widget.title,
                  style: S
                      .t(context)
                      .headline5!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                const Spacer(),
                BTextButton(
                  label: '+ تعریف گروه جدید',
                  onTap: () => _showNewCustomersGroupForm(context),
                ),
              ],
            ),
            const SizedBox(height: 32),
            if (!widget.selectSingleGroup)
              Row(
                children: [
                  const Icon(Iconsax.info_circle, size: 18),
                  const SizedBox(width: 8),
                  Text(
                    'انتخاب یک یا چند گروه هدف',
                    style: S
                        .bodyText2Bold(context)
                        .copyWith(color: S.activeTextColor(context)),
                  ),
                ],
              ),
            const SizedBox(height: 6),
            _customersGroupsList(context),
          ],
        ),
      );

  Widget _customersGroupsList(BuildContext context) => Expanded(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => _getCustomersGroupsCubit,
            child: BlocProvider(
              create: (context) =>
                  _getCustomersGroupsCubit..getCustomersGroupsF(NoParams()),
              child: BlocConsumer<GetCustomersGroupsCubit,
                  GetCustomersGroupsState>(
                listener: (context, state) => state.maybeWhen(
                  orElse: () => null,
                  done: (res) => _groups = res.data!.customerGroups,
                  error: (err) => BToast.success(err.errorReason!.first),
                ),
                builder: (context, state) => state.maybeWhen(
                  orElse: () => const BLoading(),
                  done: (res) => Column(
                    children: [
                      for (CustomersGroup group in _groups)
                        BRowListItem(
                          child: Expanded(
                            child: Row(
                              children: [Text(group.name), const Spacer()],
                            ),
                          ),
                          onTap: () => widget.selectSingleGroup
                              ? _singleSelect(group)
                              : _multiSelect(group),
                          index: res.data!.customerGroups.indexOf(group),
                          selected: _groupHasSelected(group),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  void _showNewCustomersGroupForm(BuildContext context) => showDialog(
        context: context,
        builder: (_) => NewCustomersGroupForm(
          onCreatedNewGroup: (newGroup) {
            setState(() => _groups.add(newGroup));
          },
        ),
      );

  bool _groupHasSelected(CustomersGroup group) =>
      _selectedCustomersGroups.contains(group);

  @override
  bool get wantKeepAlive => true;

  _multiSelect(CustomersGroup group) {
    setState(
      () => !_groupHasSelected(group)
          ? _selectedCustomersGroups.add(group)
          : _selectedCustomersGroups.remove(group),
    );
    widget.onSelectGroups(_selectedCustomersGroups);
  }

  _singleSelect(CustomersGroup group) {
    widget.onSelectedSingleGroup!(group);
    Navigator.pop(context);
  }
}
