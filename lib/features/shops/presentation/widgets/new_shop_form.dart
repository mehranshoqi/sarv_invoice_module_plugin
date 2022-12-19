import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../../../core/ui/b_button.dart';
import '../../../../core/ui/b_image_picker.dart';
import '../../../../core/ui/b_input.dart';
import '../../../../core/ui/b_modal_sheet.dart';
import '../../../../core/ui/b_toast.dart';
import '../../../../core/ui/modal_line.dart';
import '../../domain/entities/create_store/param/create_store_param.dart';
import '../../domain/entities/create_store/response/store/store.dart';
import '../controller/create_store/cubit.dart';
import '../controller/create_store/state.dart';

class NewShopForm extends StatefulWidget {
  const NewShopForm({
    Key? key,
    required this.onCreateStore,
  }) : super(key: key);
  final Function(Store store) onCreateStore;

  @override
  State<NewShopForm> createState() => _NewShopFormState();
}

class _NewShopFormState extends State<NewShopForm> {
  late CreateStoreCubit _createStoreCubit;
  final CreateStoreParams _createStoreParams = CreateStoreParams(
    phone: '',
    name: '',
    address: '',
  );

  @override
  void initState() {
    _createStoreCubit = sl<CreateStoreCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BModalSheet(
        height: 40.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // const ModalTopLine(),
            const SizedBox(height: 28),
            _title(context),
            const SizedBox(height: 2),
            const Divider(endIndent: 32, indent: 32),
            const SizedBox(height: 44),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    height: 290,
                    child: Row(
                      children: [
                        _form(context),
                        const SizedBox(width: 64),
                        const Spacer(),
                        _imagePicker(context),
                      ],
                    ),
                  ),
                  const SizedBox(height: 48),
                  _createShopButton(context),
                ]),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      );

  Widget _createShopButton(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: BlocProvider(
          create: (context) => _createStoreCubit,
          child: BlocConsumer<CreateStoreCubit, CreateStoreState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => null,
              done: (res) {
                widget.onCreateStore(res.data!.store);
                Navigator.pop(context);
              },
              error: (err) => BToast.success(err.errorReason!.first),
            ),
            builder: (context, state) {
              return BButton(
                label: 'ایجاد فروشگاه',
                onTap: _createNewStore,
                expanded: true,
                loading: state is CreateStoreStateLoading,
              );
            },
          ),
        ),
      );

  Widget _title(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Text(
          'ایجاد فروشگاه جدید',
          style: S.h4Bold(context).copyWith(fontWeight: FontWeight.w900),
        ),
      );

  Widget _imagePicker(BuildContext context) => BImagePicker(
        onSelectImage: (imagePath) => _createStoreParams.logoPath = imagePath,
        size: 280,
        info: 'بارگذاری تصویر لوگوی فروشگاه',
      );

  Widget _form(BuildContext context) => Expanded(
        flex: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: BInput(
                    placeholder: 'نام فروشگاه',
                    onChange: (t) => _createStoreParams.name = t,
                  ),
                ),
                const SizedBox(width: 28),
                Expanded(
                  child: BInput(
                    placeholder: 'تلفن',
                    onChange: (t) => _createStoreParams.phone = t,
                    inputType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const Spacer(),
            BInput(
              expanded: true,
              placeholder: 'آدرس فروشگاه',
              onChange: (t) => _createStoreParams.address = t,
            ),
            const Spacer(),
            BInput(
              expanded: true,
              height: 120,
              placeholder: 'توضیحات',
              onChange: (t) => _createStoreParams.description = t,
              maxLine: 1,
            ),
            const Spacer(),
          ],
        ),
      );

  void _createNewStore() async {
    _validateForm() ? _createStoreCubit.createStoreF(_createStoreParams) : null;
  }

  bool _validateForm() {
    return true;
  }
}
