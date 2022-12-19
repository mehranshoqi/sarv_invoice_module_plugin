import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_buy_invoice/params/params.dart';
import '../../../domain/usecase/create_buy_invoice.dart';
import 'state.dart';

@injectable
class CreateBuyInvoiceCubit extends BaseCubit<CreateBuyInvoiceState> {
  CreateBuyInvoiceCubit({
    required this.createBuyInvoice,
  }) : super(const CreateBuyInvoiceState.initial());

  final CreateBuyInvoice createBuyInvoice;

  Future<void> createBuyInvoiceF(CreateBuyInvoiceParams params) async {
    emit(const CreateBuyInvoiceState.loading());

    final result = await createBuyInvoice(params);

    result.fold(
      (failure) => emit(CreateBuyInvoiceState.error(failure)),
      (response) => emit(CreateBuyInvoiceState.done(response)),
    );
  }
}
