import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/usecase/get_marketers.dart';
import 'state.dart';

@injectable
class GetMarketersCubit extends BaseCubit<GetMarketersState> {
  GetMarketersCubit({
    required this.getMarketers,
  }) : super(const GetMarketersState.initial());

  final GetMarketers getMarketers;

  Future<void> GetMarketersF(NoParams params) async {
    emit(const GetMarketersState.loading());

    final result = await getMarketers(params);

    result.fold(
      (failure) => emit(GetMarketersState.error(failure)),
      (response) => emit(GetMarketersState.done(response)),
    );
  }
}
