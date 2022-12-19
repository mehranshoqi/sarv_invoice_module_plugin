import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_stock/params/params.dart';
import '../../../domain/usecases/create_stock.dart';
import 'state.dart';

@injectable
class CreateStockCubit extends BaseCubit<CreateStockState> {
  CreateStockCubit({
    required this.createStock,
  }) : super(const CreateStockState.initial());

  final CreateStock createStock;

  Future<void> createStockF(CreateStockParams params) async {
    emit(const CreateStockState.loading());

    final result = await createStock(params);

    result.fold(
      (failure) => emit(CreateStockState.error(failure)),
      (response) => emit(CreateStockState.done(response)),
    );
  }
}
