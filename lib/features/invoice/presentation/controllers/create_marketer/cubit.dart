import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_marketer/params/params.dart';
import '../../../domain/usecase/create_marketer.dart';
import 'state.dart';

@injectable
class CreateMarketerCubit extends BaseCubit<CreateMarketerState> {
  CreateMarketerCubit({
    required this.createMarketer,
  }) : super(const CreateMarketerState.initial());

  final CreateMarketer createMarketer;

  Future<void> createMarketerF(CreateMarketerParams params) async {
    emit(const CreateMarketerState.loading());

    final result = await createMarketer(params);

    result.fold(
      (failure) => emit(CreateMarketerState.error(failure)),
      (response) => emit(CreateMarketerState.done(response)),
    );
  }
}
