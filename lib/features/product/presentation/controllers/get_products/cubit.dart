import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/get_products/params/params.dart';
import '../../../domain/usecases/get_products.dart';
import 'state.dart';

@injectable
class GetProductsCubit extends BaseCubit<GetProductsState> {
  GetProductsCubit({
    required this.getProducts,
  }) : super(const GetProductsState.initial());

  final GetProducts getProducts;

  Future<void> getProductsF(GetProductsParams params) async {
    emit(const GetProductsState.loading());

    final result = await getProducts(params);

    result.fold(
      (failure) => emit(GetProductsState.error(failure)),
      (response) => emit(GetProductsState.done(response)),
    );
  }
}
