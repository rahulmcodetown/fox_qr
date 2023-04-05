import 'package:flutter/material.dart';
import 'package:fox/shared/shared.dart';
import 'package:fox/themes/app_text.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class QrWeeklyActivity extends StatelessWidget {
  QrWeeklyActivity({super.key});

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topRight,
          // TODO: convert this to app dropdown
          child: DropdownButton<String>(
            value: 'Weekly',
            icon: const Icon(Icons.arrow_drop_down),
            dropdownColor: AppColors.white,
            underline: const SizedBox(),
            items: ['Weekly', 'Monthly'].map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {},
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Total Scans',
                  style: AppText.text12w400.copyWith(
                    color: AppColors.black.withOpacity(0.7),
                  ),
                ),
                Text('31', style: AppText.text60w600)
              ],
            ),
            sizedBoxWithWidth(24),
            SizedBox(
              height: 180.h,
              width: 220.w,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(
                    majorGridLines: MajorGridLines(width: 0.w),
                    labelStyle: AppText.text12w600
                        .copyWith(color: AppColors.greyTextColor)),
                primaryYAxis: CategoryAxis(
                  interval: 10,
                  edgeLabelPlacement: EdgeLabelPlacement.hide,
                  axisLabelFormatter: (_) => ChartAxisLabel(
                    '',
                    AppText.text12w400,
                  ),
                ),
                plotAreaBackgroundColor: Colors.white,
                palette: [AppColors.pinkColor],
                series: <ChartSeries<_SalesData, String>>[
                  ColumnSeries<_SalesData, String>(
                    dataSource: data,
                    xValueMapper: (_SalesData sales, _) => sales.year,
                    yValueMapper: (_SalesData sales, _) => sales.sales,
                  )
                ],
              ),
            ),
          ],
        ),
        sizedBoxWithWidth(32),
      ],
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
