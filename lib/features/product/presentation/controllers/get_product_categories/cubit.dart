import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/get_product_categories/params/params.dart';
import '../../../domain/usecases/get_product_categories.dart';
import '../get_product_categories/state.dart';

@injectable
class GetProductCategoriesCubit extends BaseCubit<GetProductCategoriesState> {
  GetProductCategoriesCubit({
    required this.getProductCategories,
  }) : super(const GetProductCategoriesState.initial());

  final GetProductCategories getProductCategories;

  Future<void> getProductCategoriesF(GetProductCategoriesParams params) async {
    emit(const GetProductCategoriesState.loading());

    final result = await getProductCategories(params);

    result.fold(
      (failure) => emit(GetProductCategoriesState.error(failure)),
      (response) => emit(GetProductCategoriesState.done(response)),
    );
  }
}
