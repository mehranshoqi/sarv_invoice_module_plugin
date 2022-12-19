import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_product_category/params/params.dart';
import '../../../domain/usecases/create_product_category.dart';
import 'state.dart';

@injectable
class CreateProductCategoryCubit extends BaseCubit<CreateProductCategoryState> {
  CreateProductCategoryCubit({
    required this.createProductCategory,
  }) : super(const CreateProductCategoryState.initial());

  final CreateProductCategory createProductCategory;

  Future<void> createProductCategoryF(
      CreateProductCategoryParams params) async {
    emit(const CreateProductCategoryState.loading());

    final result = await createProductCategory(params);

    result.fold(
      (failure) => emit(CreateProductCategoryState.error(failure)),
      (response) => emit(CreateProductCategoryState.done(response)),
    );
  }
}
