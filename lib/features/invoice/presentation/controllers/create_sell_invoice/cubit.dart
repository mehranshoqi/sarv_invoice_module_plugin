import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_sell_invoice/params/params.dart';
import '../../../domain/usecase/create_sell_invoice.dart';
import 'state.dart';

@injectable
class CreateSellInvoiceCubit extends BaseCubit<CreateSellInvoiceState> {
  CreateSellInvoiceCubit({
    required this.createSellInvoice,
  }) : super(const CreateSellInvoiceState.initial());

  final CreateSellInvoice createSellInvoice;

  Future<void> createBuyInvoiceF(CreateSellInvoiceParams params) async {
    emit(const CreateSellInvoiceState.loading());

    final result = await createSellInvoice(params);

    result.fold(
      (failure) => emit(CreateSellInvoiceState.error(failure)),
      (response) => emit(CreateSellInvoiceState.done(response)),
    );
  }
}
