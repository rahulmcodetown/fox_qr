import 'package:flutter/material.dart';
import 'package:fox/shared/shared.dart';
import 'package:fox/themes/app_text.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DeviceTypeReports extends StatelessWidget {
  DeviceTypeReports({super.key});

  final data = <_SalesData>[
    _SalesData('S', 35),
    _SalesData('M', 28),
    _SalesData('T', 34),
    _SalesData('W', 32),
    _SalesData('TH', 40),
    _SalesData('F', 40),
    _SalesData('S', 40),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SfCircularChart(
          palette: [AppColors.pinkColor],
          series: <PieSeries<_SalesData, String>>[
            PieSeries<_SalesData, String>(
              explode: false,
              explodeIndex: 0,
              pointColorMapper: (_, position) => position == 0
                  ? AppColors.pinkLightColor
                  : AppColors.pinkColor,
              dataSource: data,
              xValueMapper: (_SalesData data, _) => data.year,
              yValueMapper: (_SalesData data, _) => data.sales,
            ),
          ],
        ),
        Table(
          children: [
            TableRow(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.greyTextColor,
                    width: 1.w,
                  ),
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                  child: Text(
                    'Total Scans',
                    style: AppText.text12w400.copyWith(
                      color: AppColors.black.withOpacity(0.7),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                  child: Text(
                    'Device',
                    style: AppText.text12w400.copyWith(
                      color: AppColors.black.withOpacity(0.7),
                    ),
                  ),
                )
              ],
            ),
            _renderRow('18', 'Android'),
            _renderRow('26', 'IOS'),
          ],
        ),
        sizedBoxWithHeight(24),
      ],
    );
  }

  TableRow _renderRow(String key, String value) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
          child: Text(
            key,
            style: AppText.text12w600.copyWith(color: AppColors.pinkColor),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
          child: Text(
            value,
            style: AppText.text12w600.copyWith(color: AppColors.pinkLightColor),
          ),
        ),
      ],
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
