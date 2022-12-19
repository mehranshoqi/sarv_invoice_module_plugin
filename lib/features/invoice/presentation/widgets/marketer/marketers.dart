import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/helpers/styles.dart';
import '../../../../../core/injection/di.dart';
import '../../../../../core/ui/b_alert_dialog.dart';
import '../../../../../core/ui/b_list_row_item.dart';
import '../../../../../core/ui/b_loading.dart';
import '../../../../../core/ui/b_toast.dart';
import '../../../../../core/ui/close_button.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/entities/create_marketer/response/marketer/marketer.dart';
import '../../controllers/get_marketers/cubit.dart';
import '../../controllers/get_marketers/state.dart';
import 'new_marketer_form.dart';

class MarketersWidget extends StatefulWidget {
  const MarketersWidget({
    Key? key,
    required this.onSelectMarketer,
    this.dialog = false,
  }) : super(key: key);
  final Function(Marketer marketer) onSelectMarketer;
  final bool dialog;

  @override
  State<MarketersWidget> createState() => _MarketersWidgetState();
}

class _MarketersWidgetState extends State<MarketersWidget> {
  final List<Marketer> _marketers = [];
  late GetMarketersCubit _getMarketersCubit;

  @override
  void initState() {
    super.initState();
    _getMarketersCubit = sl<GetMarketersCubit>();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        child: widget.dialog
            ? BAlertDialog(
                margin: 12,
                width: 1300,
                height: 95.h,
                child: _marketersWidget(context),
              )
            : _marketersWidget(context),
      );

  Widget _marketersWidget(BuildContext context) => Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CloseButtonWidget(),
              Text('بازاریاب ها',
                  style: S
                      .bodyText1Bold(context)
                      .copyWith(fontWeight: FontWeight.w900)),
              const SizedBox(width: 40),
            ],
          ),
          const SizedBox(height: 28),
          _marketersList(context),
          const SizedBox(height: 12),
        ],
      );

  Widget _marketersList(BuildContext context) => Expanded(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (_) => _getMarketersCubit..GetMarketersF(NoParams()),
            child: BlocConsumer<GetMarketersCubit, GetMarketersState>(
              listener: (context, state) => state.maybeWhen(
                orElse: () => null,
                error: (err) => BToast.success(err.errorReason!.first),
                done: (res) =>
                    setState(() => _marketers.addAll(res.data!.items)),
              ),
              builder: (context, state) => state.maybeWhen(
                orElse: () => const BLoading(),
                done: (res) => Column(
                  children: [
                    for (int i = 0; i < _marketers.length; i++)
                      _singleMarketer(
                        context,
                        _marketers[i],
                        i,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget _singleMarketer(BuildContext context, Marketer marketer, int index) =>
      BRowListItem(
        child: Expanded(
          child: Row(
            children: [
              Expanded(child: Text(marketer.name)),
              // Text(
              //   marketer.commissionType,
              //   style: S
              //       .t(context)
              //       .bodyText1!
              //       .copyWith(color: S.activeTextColor600(context)),
              // ),
            ],
          ),
        ),
        onTap: () {
          widget.onSelectMarketer(marketer);
          Navigator.pop(context);
        },
        index: index,
        showArrow: false,
      );

  void _showNewMarketerForm(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) => NewMarketerForm(
          onCreateMarketer: (newMarketer) => setState(
            () => _marketers.add(newMarketer),
          ),
        ),
      );
}
