// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GetProductsParamsToJson(GetProductsParams instance) {
  final val = <String, dynamic>{
    'stringify': instance.stringify,
    'hashCode': instance.hashCode,
    'search': instance.search,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categoryId', instance.categoryId);
  writeNotNull('productTypeId', instance.productTypeId);
  writeNotNull('joinStocks', instance.joinStocks);
  val['props'] = instance.props;
  return val;
}
