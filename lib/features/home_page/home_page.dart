import 'package:flutter/material.dart';
import 'package:fox/shared/shared.dart';
import 'package:fox/themes/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const AppDrawer(),
      appBar: AppHeader(onDrawerTap: _handlerDrawer),
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: _renderBody(),
    );
  }

  void _handlerDrawer() {
    if (_scaffoldKey.currentState?.isEndDrawerOpen ?? false) {
      _scaffoldKey.currentState?.closeEndDrawer();
      return;
    }
    _scaffoldKey.currentState?.openEndDrawer();
  }

  Widget _renderBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sizedBoxWithHeight(20),
        Text(
          'QR Type',
          style: AppText.text24w600.copyWith(color: AppColors.black),
        ),
        sizedBoxWithHeight(20),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 16,
            itemBuilder: (_, index) => _renderListItem(),
          ),
        ),
      ],
    );
  }

  Widget _renderListItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32.w, vertical: 8.h),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
      decoration: BoxDecoration(
        color: AppColors.yellowColor,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: AppColors.black, width: 2.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Whatsapp',
            style: AppText.text24w600.copyWith(
              color: AppColors.black,
            ),
          ),
          CircleAvatar(
            radius: 24.r,
            backgroundColor: AppColors.black,
            child: const AppImage(Images.whatsAppIcon),
          )
        ],
      ),
    );
  }
}
