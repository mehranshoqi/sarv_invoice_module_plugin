// import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/routing/routes.dart';
import '../../../../core/config/theme/colors.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/styles.dart';
import '../../../../core/ui/b_container.dart';
import '../../domain/entities/send_otp/response/send_otp_response.dart';
import '../../domain/entities/send_phone/response/send_phone.dart';
import '../widgets/get_name.dart';
import '../widgets/get_otp.dart';
import '../widgets/get_phone.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final PageController _pageController = PageController(initialPage: 0);
  SendPhoneResponse? _sendPhoneResponse;
  SendOtpResponse? _sendOtpResponse;
  bool _fadeForm = false;
  String phoneNumber = '';

  @override
  void initState() {
    super.initState();
    // _setWindowSize();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: AppColors.oSecondaryColor,
      child: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Transform.scale(
                scale: 1.4,
                child: Opacity(opacity: .65, child: Image.asset(Assets.dotBg)),
              ),
            ),
            _loginForm(context),
          ],
        ),
      ),
    );
  }

  Widget _loginForm(BuildContext context) => AnimatedOpacity(
        duration: const Duration(milliseconds: 280),
        opacity: _fadeForm ? 0 : 1,
        child: BContainer(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              _title(context),
              const SizedBox(height: 28),
              _loginSteps(context),
            ],
          ),
        ),
      );

  Widget _title(BuildContext context) => Text(
        'ورود به حساب کاربری',
        style: S.h5Bold(context).copyWith(fontWeight: FontWeight.w900),
      );

  Widget _loginSteps(BuildContext context) => SizedBox(
        height: 300,
        width: 380,
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            GetPhone(
              nextPage: (sendPhoneResponse, phone) {
                _sendPhoneResponse = sendPhoneResponse;
                setState(() => phoneNumber = phone);
                _nextPage();
              },
            ),
            GetOTP(
              nextPage: (otpResponse) {
                setState(() => _sendOtpResponse = otpResponse.data);
                _nextPage();
              },
              prevPage: _prevPage,
              retryTime: _sendPhoneResponse?.retryTime ?? 0,
              phoneNumber: phoneNumber,
            ),
            GetName(
              onDone: () => _navigateToShopsList(context),
              sendOtpResponse: _sendOtpResponse,
            )
          ],
        ),
      );

  void _nextPage() => _pageController.nextPage(
        duration: const Duration(milliseconds: 420),
        curve: Curves.easeOut,
      );

  void _prevPage() => _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );

  void _navigateToShopsList(BuildContext context) async {
    setState(() => _fadeForm = true);
    await Future.delayed(const Duration(milliseconds: 350));
    Navigator.pushReplacementNamed(context, Routes.shops);
  }

  void _setWindowSize() async {
    // await DesktopWindow.setMinWindowSize(const Size(1080, 736));
  }
}
