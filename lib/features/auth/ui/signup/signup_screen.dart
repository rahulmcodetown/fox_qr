import 'package:flutter/material.dart';
import 'package:fox/shared/shared.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
            child: Column(
              children: [
                sizedBoxWithHeight(22),
                _renderForm(),
                const Spacer(),
                sizedBoxWithHeight(40),
                // TODO: add app check

                AppButton(
                  onClick: () {},
                  label: 'Create Account',
                  iconAlign: Alignment.centerRight,
                  icon: AppImage(
                    Images.arrowBackWhite,
                    height: 16.h,
                    width: 32.w,
                  ),
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
          'Sign Up',
          style: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
          ),
        ),
        sizedBoxWithHeight(41),
        AppTextFormField(name: 'email'),
        sizedBoxWithHeight(20),
        AppTextFormField(name: 'password'),
        sizedBoxWithHeight(20),
        AppTextFormField(name: 'confirm_password'),
        sizedBoxWithHeight(40),
        Divider(color: AppColors.greyColor.withOpacity(0.12), height: 1.h),
        sizedBoxWithHeight(40),
        AppTextFormField(name: 'username'),
      ],
    );
  }
}
