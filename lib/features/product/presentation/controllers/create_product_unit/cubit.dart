import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_unit/params/params.dart';
import '../../../domain/usecases/create_product_unit.dart';
import 'state.dart';

@injectable
class CreateProductUnitCubit extends BaseCubit<CreateProductUnitState> {
  CreateProductUnitCubit({
    required this.createProductUnit,
  }) : super(const CreateProductUnitState.initial());

  final CreateProductUnit createProductUnit;

  Future<void> createProductUnitF(CreateUnitParams params) async {
    emit(const CreateProductUnitState.loading());

    final result = await createProductUnit(params);

    result.fold(
      (failure) => emit(CreateProductUnitState.error(failure)),
      (response) => emit(CreateProductUnitState.done(response)),
    );
  }
}
