import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../../core/config/routing/routes.dart';
import '../../../../core/config/theme/colors.dart';
import '../../../../core/constants/pref_keys.dart';
import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/styles.dart';
import '../../../../core/injection/di.dart';
import '../../../../core/services/user.dart';
import '../../../../core/ui/b_loading.dart';
import '../../../../core/ui/b_toast.dart';
import '../../domain/entities/init/response/init_response.dart';
import '../controller/init/cubit.dart';
import '../controller/init/state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late GetInitCubit _getInitCubit;

  @override
  void initState() {
    super.initState();
    // _clear();
    _getInitCubit = sl<GetInitCubit>();
    _checkLogged();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => _getInitCubit,
        child: Center(
          child: BlocListener<GetInitCubit, GetInitState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => null,
              error: (err) => _getInitErrorHandler(err, context),
              done: (res) => _initResponseHandler(res),
            ),
            child: Container(
              color: AppColors.oSecondaryColor,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: Transform.scale(
                      scale: 1.4,
                      child: Opacity(
                          opacity: .65, child: Image.asset(Assets.dotBg)),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(flex: 3),
                          Text(
                            'لطفا شکیبا باشید',
                            style: S
                                .h4Bold(context)
                                .copyWith(fontWeight: FontWeight.w900),
                          ),
                          const Spacer(flex: 2),
                          const Opacity(opacity: .8, child: BLoading()),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  void _checkLogged() async {
    final bool isLogged = await UserService.isLogged();
    await Future.delayed(const Duration(milliseconds: 300));
    !isLogged
        ? Navigator.pushReplacementNamed(context, Routes.auth)
        : _getInit();
  }

  _initResponseHandler(BaseResponse<InitResponse> res) {
    Navigator.pushReplacementNamed(context, Routes.shops);
  }

  _getInit() => _getInitCubit.getInitF();

  void _clear() async {
    await sl<FlutterSecureStorage>().write(key: Prefkeys.logged, value: '');
  }

  _getInitErrorHandler(Failure err, BuildContext context) {

    Navigator.pushReplacementNamed(context, Routes.auth);
    BToast.success(err.errorReason?.first);
  }
}
