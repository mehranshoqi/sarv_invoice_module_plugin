import 'package:flutter/material.dart';

import '../../../../../core/constants/global.dart';
import '../../../../../core/entities/week_day.dart';
import '../../../../../core/helpers/styles.dart';
// import '../../../../../core/packages/date_picker/persian_datetime_picker.dart';
import '../../../../../core/ui/b_button.dart';
import '../../../../../core/ui/b_input.dart';

// ignore: must_be_immutable
class SelectDiscountPeriod extends StatefulWidget {
  const SelectDiscountPeriod({
    Key? key,
    required this.onSelectPeriod,
  }) : super(key: key);
  final Function(List<String> days, String startDate, String endDate)
      onSelectPeriod;

  @override
  State<SelectDiscountPeriod> createState() => _SelectDiscountPeriodState();
}

class _SelectDiscountPeriodState extends State<SelectDiscountPeriod>
    with AutomaticKeepAliveClientMixin<SelectDiscountPeriod> {
  final TextEditingController _startDateController = TextEditingController(),
      _endDateController = TextEditingController();

  final List<WeekDay> _selectedDays = [];

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'زمان موثر تخفیف',
              style:
                  S.t(context).headline5!.copyWith(fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(height: 24),
          _startAndEndDate(context),
          const SizedBox(height: 48),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'روز های موثر هفته',
              style:
                  S.t(context).headline5!.copyWith(fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(height: 24),
          _week(context),
          const SizedBox(height: 72),
          BButton(
            onTap: () => widget.onSelectPeriod(
              _selectedDays.map((d) => d.value).toList(),
              _startDateController.text.trim(),
              _endDateController.text.trim(),
            ),
            label: 'تایید',
            minWidth: 240,
            height: 50,
          )
        ],
      );

  Widget _startAndEndDate(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                BInput(
                  onChange: (t) {},
                  placeholder: 'تاریخ شروع',
                  controller: _startDateController,
                  expanded: true,
                ),
                Positioned.fill(
                  child: InkWell(
                    // onTap: () => _showDatePicker(context, _startDateController),
                    child: Container(
                      color: Colors.transparent,
                      height: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 36),
          Expanded(
            child: Stack(
              children: [
                BInput(
                  expanded: true,
                  onChange: (t) {},
                  placeholder: 'تاریخ پایان',
                  controller: _endDateController,
                ),
                Positioned.fill(
                  child: InkWell(
                    // onTap: () => _showDatePicker(context, _endDateController),
                    child: Container(
                      color: Colors.transparent,
                      height: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  Widget _week(BuildContext context) => Wrap(
        spacing: 24,
        runSpacing: 20,
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          for (WeekDay day in G.weekDays) _singleDay(day, context),
        ],
      );

  Widget _singleDay(WeekDay day, BuildContext context) => InkWell(
        onTap: () {
          _selectedDays.contains(day)
              ? _selectedDays.remove(day)
              : _selectedDays.add(day);
          setState(() {});
        },
        child: Container(
          width: 100,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 1, color: S.activeTextColor300(context)),
            color: _selectedDays.contains(day)
                ? S.activeTextColor100(context).withOpacity(.075)
                : Colors.transparent,
          ),
          child: Text(day.title),
        ),
      );

  // _showDatePicker(
  //     BuildContext context, TextEditingController controller) async {
  //   final pickedRange = await showPersianDatePicker(
  //     context: context,
  //     initialEntryMode: PDatePickerEntryMode.calendar,
  //     firstDate: Jalali(1401, 5, 1),
  //     lastDate: Jalali(1420, 1, 1),
  //     initialDate: Jalali(1401, 5, 1),
  //     confirmText: 'تایید',
  //     cancelText: 'لغو',
  //   );
  //   controller.text =
  //       (pickedRange?.toJalaliDateTime().split(' ').first) ?? controller.text;
  // }

  @override
  bool get wantKeepAlive => true;
}
