import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'store/store.dart';

part 'create_store_response.g.dart';

@JsonSerializable(createToJson: false)
class CreateStoreResponse extends Equatable {
  final Store store;

  const CreateStoreResponse(this.store);

  factory CreateStoreResponse.fromJson(Map<String, dynamic> data) =>
      _$CreateStoreResponseFromJson(data);

  @override
  List<Object?> get props => [store];
}
