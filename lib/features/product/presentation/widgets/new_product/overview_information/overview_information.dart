import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/injection/di.dart';
import '../../../../../../core/ui/b_button.dart';
import '../../../../../../core/ui/b_toast.dart';
import '../../../../domain/entities/create_product/params/params.dart';
import '../../../controllers/create_product/cubit.dart';
import '../../../controllers/create_product/state.dart';
import '../../../controllers/create_product_category/state.dart';

class OverviewInformation extends StatefulWidget {
  const OverviewInformation({Key? key}) : super(key: key);

  @override
  State<OverviewInformation> createState() => _OverviewInformationState();
}

class _OverviewInformationState extends State<OverviewInformation> {
  late CreateProductCubit _createProductCubit;

  @override
  void initState() { 
    _createProductCubit = sl<CreateProductCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Todo - show all infromation'),
            const SizedBox(height: 24),
            BlocProvider(
              create: (context) => _createProductCubit,
              child: BlocConsumer<CreateProductCubit, CreateProductState>(
                listener: (context, state) => state.maybeWhen(
                  orElse: () => null,
                  done: (res) {
                    Navigator.pop(context);
                  },
                  error: (err) => BToast.success(err.errorReason!.first),
                ),
                builder: (context, state) => BButton(
                  label: 'ساخت کالا',
                  onTap: _createProduct,
                  loading: state is CreateProductCategoryStateLoading,
                ),
              ),
            ),
          ],
        ),
      );

  // Todo.
  void _createProduct() => _createProductCubit.createProductF(
        CreateProductParams(
          'Mehran',
          'shoghi',
          2425,
          'f7113dcb-ff1a-4aaa-91be-a58a712cda85',
          '263bc6d1-f823-4640-aa3d-c7c93b5aa8dd',
          'f4305b54-a363-4806-abec-56b52fa417c6',
          true,
          true,
        ),
      );
}
