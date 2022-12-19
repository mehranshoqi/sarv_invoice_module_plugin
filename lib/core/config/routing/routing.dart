import 'package:android_pos/models/pos_resp_p1000_model.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';


import '../../../features/auth/presentatioin/pages/auth_page.dart';
import '../../../features/home/presentation/pages/home_page.dart';
import '../../../features/invoice/presentation/pages/sell/sell_invoice_pay_status.dart';
import '../../../features/shops/domain/entities/create_store/response/store/store.dart';
import '../../../features/shops/presentation/pages/shops_list_page.dart';
import 'routes.dart';

class Routing {
  static FluroRouter router = FluroRouter();

  static void setup() {
    // router.define(
    //   Routes.home,
    //   handler: _homePage,
    //   transitionType: TransitionType.cupertinoFullScreenDialog,
    //   transitionDuration: const Duration(milliseconds: 330),
    // );
    router.define(
      Routes.shops,
      handler: _shopsListPage,
      transitionType: TransitionType.materialFullScreenDialog,
      transitionDuration: const Duration(milliseconds: 300),
    );
    router.define(
      Routes.auth,
      handler: _authPage,
      transitionType: TransitionType.materialFullScreenDialog,
      transitionDuration: const Duration(milliseconds: 300),
    );
    router.define(
      Routes.payStatus,
      handler: _payStatusPage,
      transitionType: TransitionType.materialFullScreenDialog,
      transitionDuration: const Duration(milliseconds: 300),
    );
  }

  // static final Handler _homePage = Handler(
  //   handlerFunc: (
  //     context,
  //     __,
  //   ) {
  //     final Store store = context!.settings!.arguments as Store;
  //     return HomePage(store: store);
  //   },
  // );

  static final Handler _shopsListPage = Handler(
    handlerFunc: (
      BuildContext? _,
      Map<String, dynamic> __,
    ) =>
        ShopsListPage(),
  );
  static final Handler _payStatusPage = Handler(
    handlerFunc: (
      BuildContext? ctx,
      Map<String, dynamic> __,
    ) =>
        SellInvoicePayStatusPage(
      posResponse: ctx!.settings!.arguments as PosRespModel,
    ),
  );

  static final Handler _authPage = Handler(
    handlerFunc: (
      BuildContext? _,
      Map<String, dynamic> __,
    ) =>
        AuthPage(),
  );
}
