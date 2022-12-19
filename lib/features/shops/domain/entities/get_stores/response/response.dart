import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../create_store/response/store/store.dart';

part 'response.g.dart';

@JsonSerializable(createToJson: false)
class GetStoresResponse extends Equatable {
  final List<Store> stores;

  const GetStoresResponse(this.stores);

  factory GetStoresResponse.fromJson(Map<String, dynamic> data) =>
      _$GetStoresResponseFromJson(data);

  @override
  List<Object?> get props => [stores];
}
