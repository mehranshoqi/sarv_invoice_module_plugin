import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_product_type/params/params.dart';
import '../../../domain/usecases/create_product_type.dart';
import 'state.dart';

@injectable
class CreateProductTypeCubit extends BaseCubit<CreateProductTypeState> {
  CreateProductTypeCubit({
    required this.createProductType,
  }) : super(const CreateProductTypeState.initial());

  final CreateProductType createProductType;

  Future<void> createProductTypeF(CreateProductTypeParams params) async {
    emit(const CreateProductTypeState.loading());

    final result = await createProductType(params);

    result.fold(
      (failure) => emit(CreateProductTypeState.error(failure)),
      (response) => emit(CreateProductTypeState.done(response)),
    );
  }
}
