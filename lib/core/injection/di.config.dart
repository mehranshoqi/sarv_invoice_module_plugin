// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/data/datasource/datasource.dart' as _i22;
import '../../features/auth/data/datasource/datasource_impl.dart' as _i23;
import '../../features/auth/data/repository/auth_repository_impl.dart' as _i25;
import '../../features/auth/domain/repository/auth_repository.dart' as _i24;
import '../../features/auth/domain/usecase/send_name.dart' as _i83;
import '../../features/auth/domain/usecase/send_otp.dart' as _i85;
import '../../features/auth/domain/usecase/send_phone.dart' as _i87;
import '../../features/auth/presentatioin/controllers/send_name/cubit.dart'
    as _i84;
import '../../features/auth/presentatioin/controllers/send_otp/cubit.dart'
    as _i86;
import '../../features/auth/presentatioin/controllers/send_phone_number/cubit.dart'
    as _i88;
import '../../features/club/data/datasource/datasource.dart' as _i26;
import '../../features/club/data/datasource/datasource_impl.dart' as _i27;
import '../../features/club/data/repository/repository_impl.dart' as _i29;
import '../../features/club/domain/repository/respository.dart' as _i28;
import '../../features/club/domain/usecases/create_customers_group.dart'
    as _i32;
import '../../features/club/domain/usecases/create_discount.dart' as _i34;
import '../../features/club/domain/usecases/create_products_album.dart' as _i46;
import '../../features/club/domain/usecases/get_albums.dart' as _i58;
import '../../features/club/domain/usecases/get_customers_groups.dart' as _i62;
import '../../features/club/domain/usecases/get_invoice_discounts.dart' as _i66;
import '../../features/club/domain/usecases/get_products_discounts.dart'
    as _i72;
import '../../features/club/presentation/controllers/create_customers_group/cubit.dart'
    as _i33;
import '../../features/club/presentation/controllers/create_discount/cubit.dart'
    as _i35;
import '../../features/club/presentation/controllers/create_products_album/cubit.dart'
    as _i47;
import '../../features/club/presentation/controllers/get_albums/cubit.dart'
    as _i59;
import '../../features/club/presentation/controllers/get_customers_groups/cubit.dart'
    as _i63;
import '../../features/club/presentation/controllers/get_invoice_discount/cubit.dart'
    as _i67;
import '../../features/club/presentation/controllers/get_product_discount/cubit.dart'
    as _i93;
import '../../features/customer/data/datasoucre/datasource.dart' as _i54;
import '../../features/customer/data/datasoucre/datasource_impl.dart' as _i55;
import '../../features/customer/data/repository/repository_impl.dart' as _i57;
import '../../features/customer/domain/repository/repository.dart' as _i56;
import '../../features/customer/domain/usecases/create_customer.dart' as _i90;
import '../../features/customer/domain/usecases/get_customers.dart' as _i60;
import '../../features/customer/presentation/controllers/create_customer/cubit.dart'
    as _i91;
import '../../features/customer/presentation/controllers/get_customers/cubit.dart'
    as _i61;
import '../../features/invoice/data/datasouce/datasource.dart' as _i9;
import '../../features/invoice/data/datasouce/datasource_impl.dart' as _i10;
import '../../features/invoice/data/repository/repository_impl.dart' as _i12;
import '../../features/invoice/domain/repository/repository.dart' as _i11;
import '../../features/invoice/domain/usecase/create_buy_invoice.dart' as _i30;
import '../../features/invoice/domain/usecase/create_marketer.dart' as _i36;
import '../../features/invoice/domain/usecase/create_sell_invoice.dart' as _i48;
import '../../features/invoice/domain/usecase/get_marketers.dart' as _i68;
import '../../features/invoice/presentation/controllers/create_buy_invoice/cubit.dart'
    as _i31;
import '../../features/invoice/presentation/controllers/create_marketer/cubit.dart'
    as _i37;
import '../../features/invoice/presentation/controllers/create_sell_invoice/cubit.dart'
    as _i49;
import '../../features/invoice/presentation/controllers/get_marketers/cubit.dart'
    as _i69;
import '../../features/product/data/datasource/datasource.dart' as _i13;
import '../../features/product/data/datasource/datasource_impl.dart' as _i14;
import '../../features/product/data/respository/repository_impl.dart' as _i16;
import '../../features/product/domain/repository/repository.dart' as _i15;
import '../../features/product/domain/usecases/create_product.dart' as _i38;
import '../../features/product/domain/usecases/create_product_category.dart'
    as _i39;
import '../../features/product/domain/usecases/create_product_type.dart'
    as _i42;
import '../../features/product/domain/usecases/create_product_unit.dart'
    as _i44;
import '../../features/product/domain/usecases/create_stock.dart' as _i50;
import '../../features/product/domain/usecases/create_warehouse.dart' as _i53;
import '../../features/product/domain/usecases/get_product_categories.dart'
    as _i70;
import '../../features/product/domain/usecases/get_product_types.dart' as _i73;
import '../../features/product/domain/usecases/get_products.dart' as _i75;
import '../../features/product/domain/usecases/get_units.dart' as _i79;
import '../../features/product/domain/usecases/get_warehouses.dart' as _i81;
import '../../features/product/presentation/controllers/create_product/cubit.dart'
    as _i41;
import '../../features/product/presentation/controllers/create_product_category/cubit.dart'
    as _i40;
import '../../features/product/presentation/controllers/create_product_type/cubit.dart'
    as _i43;
import '../../features/product/presentation/controllers/create_product_unit/cubit.dart'
    as _i45;
import '../../features/product/presentation/controllers/create_stock/cubit.dart'
    as _i51;
import '../../features/product/presentation/controllers/create_warehouse/cubit.dart'
    as _i89;
import '../../features/product/presentation/controllers/get_product_categories/cubit.dart'
    as _i71;
import '../../features/product/presentation/controllers/get_product_types/cubit.dart'
    as _i74;
import '../../features/product/presentation/controllers/get_products/cubit.dart'
    as _i76;
import '../../features/product/presentation/controllers/get_units/cubit.dart'
    as _i80;
import '../../features/product/presentation/controllers/get_warehouses/cubit.dart'
    as _i82;
import '../../features/shops/data/datasource/shops_datasource.dart' as _i17;
import '../../features/shops/data/datasource/shops_datasource_impl.dart'
    as _i18;
import '../../features/shops/data/repository/repository_impl.dart' as _i20;
import '../../features/shops/domain/respository/repository.dart' as _i19;
import '../../features/shops/domain/usecases/create_store.dart' as _i52;
import '../../features/shops/domain/usecases/get_stores.dart' as _i77;
import '../../features/shops/presentation/controller/create_store/cubit.dart'
    as _i92;
import '../../features/shops/presentation/controller/get_store/cubit.dart'
    as _i78;
import '../../features/splash/data/datasource/init_datasource.dart' as _i5;
import '../../features/splash/data/datasource/init_datasource_impl.dart' as _i6;
import '../../features/splash/data/repository/init_repository_impl.dart' as _i8;
import '../../features/splash/domain/repository/init_repository.dart' as _i7;
import '../../features/splash/domain/usecases/get_init.dart' as _i64;
import '../../features/splash/presentation/controller/init/cubit.dart' as _i65;
import '../services/user.dart' as _i21;
import 'external_module.dart' as _i94; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  // final externalModule = _$ExternalModule();

  gh.lazySingleton<_i5.InitDatasource>(
      () => _i6.InitDatasourceIMPL(get<_i3.Dio>()));
  gh.lazySingleton<_i7.InitRepository>(
      () => _i8.InitRepositoryIMPL(get<_i5.InitDatasource>()));
  gh.lazySingleton<_i9.InvoiceDataSource>(
      () => _i10.InvoiceDataSourceIMPL(get<_i3.Dio>()));
  gh.lazySingleton<_i11.InvoiceRepository>(
      () => _i12.InvoiceRepositoryIMPL(get<_i9.InvoiceDataSource>()));
  gh.lazySingleton<_i13.ProductDatasource>(
      () => _i14.ProductDataSourceIMPL(get<_i3.Dio>()));
  gh.lazySingleton<_i15.ProductRepository>(
      () => _i16.ProductRepositoryIMPL(get<_i13.ProductDatasource>()));
  gh.lazySingleton<_i17.ShopsDatasource>(
      () => _i18.ShopsDatasourceIMPL(get<_i3.Dio>()));
  gh.lazySingleton<_i19.ShopsRepository>(
      () => _i20.ShopsRepositoryIMPL(get<_i17.ShopsDatasource>()));
  gh.lazySingleton<_i21.UserService>(() => _i21.UserService());
  gh.lazySingleton<_i22.AuthDatasource>(
      () => _i23.AuthDatasourceIMPL(get<_i3.Dio>()));
  gh.lazySingleton<_i24.AuthRepository>(
      () => _i25.AuthRepositoryIMPL(get<_i22.AuthDatasource>()));
  gh.lazySingleton<_i26.ClubDataSource>(
      () => _i27.ClubDataSourceIMPL(get<_i3.Dio>()));
  gh.lazySingleton<_i28.ClubRepository>(
      () => _i29.ClubRepositoryIMPL(get<_i26.ClubDataSource>()));
  gh.lazySingleton<_i30.CreateBuyInvoice>(
      () => _i30.CreateBuyInvoice(get<_i11.InvoiceRepository>()));
  gh.factory<_i31.CreateBuyInvoiceCubit>(() => _i31.CreateBuyInvoiceCubit(
      createBuyInvoice: get<_i30.CreateBuyInvoice>()));
  gh.lazySingleton<_i32.CreateCustomersGroup>(
      () => _i32.CreateCustomersGroup(get<_i28.ClubRepository>()));
  gh.factory<_i33.CreateCustomersGroupCubit>(() =>
      _i33.CreateCustomersGroupCubit(
          createCustomersGroup: get<_i32.CreateCustomersGroup>()));
  gh.lazySingleton<_i34.CreateDiscount>(
      () => _i34.CreateDiscount(get<_i28.ClubRepository>()));
  gh.factory<_i35.CreateDiscountCubit>(() =>
      _i35.CreateDiscountCubit(createDiscount: get<_i34.CreateDiscount>()));
  gh.lazySingleton<_i36.CreateMarketer>(
      () => _i36.CreateMarketer(get<_i11.InvoiceRepository>()));
  gh.factory<_i37.CreateMarketerCubit>(() =>
      _i37.CreateMarketerCubit(createMarketer: get<_i36.CreateMarketer>()));
  gh.lazySingleton<_i38.CreateProduct>(
      () => _i38.CreateProduct(get<_i15.ProductRepository>()));
  gh.lazySingleton<_i39.CreateProductCategory>(
      () => _i39.CreateProductCategory(get<_i15.ProductRepository>()));
  gh.factory<_i40.CreateProductCategoryCubit>(() =>
      _i40.CreateProductCategoryCubit(
          createProductCategory: get<_i39.CreateProductCategory>()));
  gh.factory<_i41.CreateProductCubit>(
      () => _i41.CreateProductCubit(createProduct: get<_i38.CreateProduct>()));
  gh.lazySingleton<_i42.CreateProductType>(
      () => _i42.CreateProductType(get<_i15.ProductRepository>()));
  gh.factory<_i43.CreateProductTypeCubit>(() => _i43.CreateProductTypeCubit(
      createProductType: get<_i42.CreateProductType>()));
  gh.lazySingleton<_i44.CreateProductUnit>(
      () => _i44.CreateProductUnit(get<_i15.ProductRepository>()));
  gh.factory<_i45.CreateProductUnitCubit>(() => _i45.CreateProductUnitCubit(
      createProductUnit: get<_i44.CreateProductUnit>()));
  gh.lazySingleton<_i46.CreateProductsAlbum>(
      () => _i46.CreateProductsAlbum(get<_i28.ClubRepository>()));
  gh.factory<_i47.CreateProductsAlbumCubit>(() => _i47.CreateProductsAlbumCubit(
      createProductsAlbum: get<_i46.CreateProductsAlbum>()));
  gh.lazySingleton<_i48.CreateSellInvoice>(
      () => _i48.CreateSellInvoice(get<_i11.InvoiceRepository>()));
  gh.factory<_i49.CreateSellInvoiceCubit>(() => _i49.CreateSellInvoiceCubit(
      createSellInvoice: get<_i48.CreateSellInvoice>()));
  gh.lazySingleton<_i50.CreateStock>(
      () => _i50.CreateStock(get<_i15.ProductRepository>()));
  gh.factory<_i51.CreateStockCubit>(
      () => _i51.CreateStockCubit(createStock: get<_i50.CreateStock>()));
  gh.lazySingleton<_i52.CreateStores>(
      () => _i52.CreateStores(get<_i19.ShopsRepository>()));
  gh.lazySingleton<_i53.CreateWarehouse>(
      () => _i53.CreateWarehouse(get<_i15.ProductRepository>()));
  gh.lazySingleton<_i54.CustomerDataSource>(
      () => _i55.CustomerDataSourceIMPL(get<_i3.Dio>()));
  gh.lazySingleton<_i56.CustomerRepository>(
      () => _i57.CustomerRepositoryIMPL(get<_i54.CustomerDataSource>()));
  gh.lazySingleton<_i58.GetAlbums>(
      () => _i58.GetAlbums(get<_i28.ClubRepository>()));
  gh.factory<_i59.GetAlbumsCubitt>(
      () => _i59.GetAlbumsCubitt(getAlbums: get<_i58.GetAlbums>()));
  gh.lazySingleton<_i60.GetCustomers>(
      () => _i60.GetCustomers(get<_i56.CustomerRepository>()));
  gh.factory<_i61.GetCustomersCubit>(
      () => _i61.GetCustomersCubit(getCustomers: get<_i60.GetCustomers>()));
  gh.lazySingleton<_i62.GetCustomersGroups>(
      () => _i62.GetCustomersGroups(get<_i28.ClubRepository>()));
  gh.factory<_i63.GetCustomersGroupsCubit>(() => _i63.GetCustomersGroupsCubit(
      getCustomersGroups: get<_i62.GetCustomersGroups>()));
  gh.lazySingleton<_i64.GetInit>(() => _i64.GetInit(get<_i7.InitRepository>()));
  gh.factory<_i65.GetInitCubit>(
      () => _i65.GetInitCubit(getInit: get<_i64.GetInit>()));
  gh.lazySingleton<_i66.GetInvoiceDiscounts>(
      () => _i66.GetInvoiceDiscounts(get<_i28.ClubRepository>()));
  gh.factory<_i67.GetInvoiceDiscountsCubit>(() => _i67.GetInvoiceDiscountsCubit(
      getInvoiceDiscounts: get<_i66.GetInvoiceDiscounts>()));
  gh.lazySingleton<_i68.GetMarketers>(
      () => _i68.GetMarketers(get<_i11.InvoiceRepository>()));
  gh.factory<_i69.GetMarketersCubit>(
      () => _i69.GetMarketersCubit(getMarketers: get<_i68.GetMarketers>()));
  gh.lazySingleton<_i70.GetProductCategories>(
      () => _i70.GetProductCategories(get<_i15.ProductRepository>()));
  gh.factory<_i71.GetProductCategoriesCubit>(() =>
      _i71.GetProductCategoriesCubit(
          getProductCategories: get<_i70.GetProductCategories>()));
  gh.lazySingleton<_i72.GetProductDiscounts>(
      () => _i72.GetProductDiscounts(get<_i28.ClubRepository>()));
  gh.lazySingleton<_i73.GetProductTypes>(
      () => _i73.GetProductTypes(get<_i15.ProductRepository>()));
  gh.factory<_i74.GetProductTypesCubit>(() =>
      _i74.GetProductTypesCubit(getProductTypes: get<_i73.GetProductTypes>()));
  gh.lazySingleton<_i75.GetProducts>(
      () => _i75.GetProducts(get<_i15.ProductRepository>()));
  gh.factory<_i76.GetProductsCubit>(
      () => _i76.GetProductsCubit(getProducts: get<_i75.GetProducts>()));
  gh.lazySingleton<_i77.GetStores>(
      () => _i77.GetStores(get<_i19.ShopsRepository>()));
  gh.factory<_i78.GetStoresCubit>(
      () => _i78.GetStoresCubit(getStores: get<_i77.GetStores>()));
  gh.lazySingleton<_i79.GetUnits>(
      () => _i79.GetUnits(get<_i15.ProductRepository>()));
  gh.factory<_i80.GetUnitsCubit>(
      () => _i80.GetUnitsCubit(getUnits: get<_i79.GetUnits>()));
  gh.lazySingleton<_i81.GetWarehouses>(
      () => _i81.GetWarehouses(get<_i15.ProductRepository>()));
  gh.factory<_i82.GetWarehousesCubit>(
      () => _i82.GetWarehousesCubit(getWarehouses: get<_i81.GetWarehouses>()));
  gh.lazySingleton<_i83.SendName>(
      () => _i83.SendName(get<_i24.AuthRepository>()));
  gh.factory<_i84.SendNameCubit>(
      () => _i84.SendNameCubit(sendName: get<_i83.SendName>()));
  gh.lazySingleton<_i85.SendOtp>(
      () => _i85.SendOtp(get<_i24.AuthRepository>()));
  gh.factory<_i86.SendOtpCubit>(
      () => _i86.SendOtpCubit(sendOtp: get<_i85.SendOtp>()));
  gh.lazySingleton<_i87.SendPhoneNumber>(
      () => _i87.SendPhoneNumber(get<_i24.AuthRepository>()));
  gh.factory<_i88.SendPhoneNumberCubit>(() =>
      _i88.SendPhoneNumberCubit(sendPhoneNumber: get<_i87.SendPhoneNumber>()));
  gh.factory<_i89.CReateWarehouseCubit>(() =>
      _i89.CReateWarehouseCubit(createWarehouse: get<_i53.CreateWarehouse>()));
  gh.lazySingleton<_i90.CreateCustomer>(
      () => _i90.CreateCustomer(get<_i56.CustomerRepository>()));
  gh.factory<_i91.CreateCustomerCubit>(() =>
      _i91.CreateCustomerCubit(createCustomer: get<_i90.CreateCustomer>()));
  gh.factory<_i92.CreateStoreCubit>(
      () => _i92.CreateStoreCubit(createStore: get<_i52.CreateStores>()));
  gh.factory<_i93.GetProductDiscountCubit>(() => _i93.GetProductDiscountCubit(
      getProductDiscount: get<_i72.GetProductDiscounts>()));
  return get;
}

// class _$ExternalModule extends _i94.ExternalModule {}
