import 'package:flutter/material.dart';
import 'package:fox/routes/routes.dart';
import 'package:fox/shared/shared.dart';
import 'package:fox/themes/app_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(leftWidget: AppBackButton()),
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
            child: Column(
              children: [
                const Spacer(),
                _renderForm(),
                const Spacer(),
                AppButton(
                  border: Border.all(color: AppColors.black, width: 2.r),
                  primaryColor: AppColors.white,
                  highLightedTextColor: AppColors.black,
                  textStyle: AppText.text20w600Black,
                  onClick: _handleSend,
                  label: 'Send',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderForm() {
    return Column(
      children: [
        Text(
          'Forgot Password',
          style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
          ),
        ),
        sizedBoxWithHeight(40),
        Text(
          'Please enter your email address to receive an activation link',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        sizedBoxWithHeight(40),
        AppTextFormField(name: 'email'),
      ],
    );
  }

  void _handleSend() {
    AppEnvironment.navigator.pushNamed(AuthRoutes.createNewPasswordScreen);
  }
}
