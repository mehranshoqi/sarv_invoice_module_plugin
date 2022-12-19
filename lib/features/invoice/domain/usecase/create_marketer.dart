import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/create_marketer/params/params.dart';
import '../entities/create_marketer/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class CreateMarketer extends UseCases<BaseResponse<CreateMarketerResponse>,
    CreateMarketerParams> {
  final InvoiceRepository repository;

  CreateMarketer(this.repository);

  @override
  Future<Either<Failure, BaseResponse<CreateMarketerResponse>>> call(
          CreateMarketerParams params) async =>
      await repository.createMarketer(params);
}
