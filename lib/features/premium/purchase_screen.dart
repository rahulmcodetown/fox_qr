import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:fox/features/premium/premium.dart';
import 'package:fox/routes/routes.dart';
import 'package:fox/shared/shared.dart';
import 'package:fox/themes/app_text.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white.withOpacity(0.8),
      bottomNavigationBar: _renderCta(),
      body: BackdropFilter(
        filter: ui.ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
            shrinkWrap: true,
            children: [
              Center(
                child: Text(
                  'Join Premium And \nGet More!',
                  textAlign: TextAlign.center,
                  style: AppText.text24w700,
                ),
              ),
              sizedBoxWithHeight(36),
              Text.rich(
                TextSpan(
                  text: 'With ',
                  children: [
                    TextSpan(
                      text: 'Free',
                      style: TextStyle(
                        color: AppColors.pinkColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                    ),
                    const TextSpan(text: ' You Get :'),
                  ],
                ),
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              sizedBoxWithHeight(24),
              _renderFeatureList(),
              sizedBoxWithHeight(40),
              _renderPlanList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderFeatureList() {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: Strings.whatUget.length,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => sizedBoxWithHeight(24),
      itemBuilder: (_, index) => _renderFeature(index),
    );
  }

  Widget _renderFeature(int index) {
    return Row(
      children: [
        Icon(
          Icons.check,
          color: AppColors.blueTickColor,
          size: 24.r,
        ),
        sizedBoxWithWidth(24),
        Text(
          Strings.whatUget[index],
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }

  Widget _renderPlanList() {
    return ListView.separated(
      itemCount: 3,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => sizedBoxWithHeight(10),
      itemBuilder: (_, index) => _renderPlan(index),
    );
  }

  Widget _renderPlan(int index) {
    return Container(
      height: 90.h,
      decoration: BoxDecoration(
        color: AppColors.pinkColor,
        border: Border.all(width: 4.r, color: AppColors.appColor),
        boxShadow: [
          BoxShadow(
            blurRadius: 25.r,
            offset: Offset(0, 3.h),
            color: AppColors.shadowColor,
          )
        ],
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Stack(
        children: [
          ClipPath(
            // TODO: pass length of string added by value and prefix
            clipper: PremiumPathClipper(length: 9),
            child: Container(
              width: MediaQuery.of(AppEnvironment.ctx).size.width,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.45),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            child: Row(
              children: [
                Text.rich(
                  TextSpan(
                    text: '\$0,00',
                    children: [
                      TextSpan(text: ' /yr', style: AppText.text12w400White),
                    ],
                  ),
                  style: AppText.text24w600White,
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Free', style: AppText.text16w700White),
                    Text(
                      'Unlimited',
                      style: AppText.text16w400White,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderCta() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
      child: SizedBox(
        height: 56.h,
        child: AppButton(
          border: Border.all(color: AppColors.black, width: 2.r),
          primaryColor: AppColors.white,
          highLightedTextColor: AppColors.black,
          textStyle: AppText.text20w600Black,
          onClick: _handleContinueForFree,
          label: 'Continue For Free',
        ),
      ),
    );
  }

  void _handleContinueForFree() {
    AppEnvironment.navigator.pushNamedAndRemoveUntil(
      GeneralRoutes.homePageScreen,
      (route) => false,
    );
  }
}
