import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/usecases/get_init.dart';
import 'state.dart';

@injectable
class GetInitCubit extends BaseCubit<GetInitState> {
  GetInitCubit({
    required this.getInit,
  }) : super(const GetInitState.initial());

  final GetInit getInit;

  Future<void> getInitF() async {
    emit(const GetInitState.loading());

    final result = await getInit(NoParams());

    result.fold(
      (failure) => emit(GetInitState.error(failure)),
      (response) => emit(GetInitState.done(response)),
    );
  }
}
