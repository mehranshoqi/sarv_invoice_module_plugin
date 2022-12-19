import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/get_product_discounts/params/params.dart';
import '../../../domain/usecases/get_products_discounts.dart';
import 'state.dart';

@injectable
class GetProductDiscountCubit extends BaseCubit<GetProductDiscountState> {
  GetProductDiscountCubit({
    required this.getProductDiscount,
  }) : super(const GetProductDiscountState.initial());

  final GetProductDiscounts getProductDiscount;

  Future<void> getProductDiscountF(GetProductDiscountParams params) async {
    print('get product discouuuunt');
    emit(const GetProductDiscountState.loading());

    final result = await getProductDiscount(params);

    result.fold(
      (failure) => emit(GetProductDiscountState.error(failure)),
      (response) => emit(GetProductDiscountState.done(response)),
    );
  }
}
