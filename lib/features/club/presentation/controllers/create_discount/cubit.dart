import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_discount/params/params.dart';
import '../../../domain/usecases/create_discount.dart';
import 'state.dart';

@injectable
class CreateDiscountCubit extends BaseCubit<CreateDiscountState> {
  CreateDiscountCubit({
    required this.createDiscount,
  }) : super(const CreateDiscountState.initial());

  final CreateDiscount createDiscount;

  Future<void> createDiscountF(CreateDiscountParams params) async {
    emit(const CreateDiscountState.loading());

    final result = await createDiscount(params);

    result.fold(
      (failure) => emit(CreateDiscountState.error(failure)),
      (response) => emit(CreateDiscountState.done(response)),
    );
  }
}
