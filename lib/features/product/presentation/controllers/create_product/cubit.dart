import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_product/params/params.dart';
import '../../../domain/usecases/create_product.dart';
import 'state.dart';

@injectable
class CreateProductCubit extends BaseCubit<CreateProductState> {
  CreateProductCubit({
    required this.createProduct,
  }) : super(const CreateProductState.initial());

  final CreateProduct createProduct;

  Future<void> createProductF(CreateProductParams params) async {
    emit(const CreateProductState.loading());

    final result = await createProduct(params);

    result.fold(
      (failure) => emit(CreateProductState.error(failure)),
      (response) => emit(CreateProductState.done(response)),
    );
  }
}
