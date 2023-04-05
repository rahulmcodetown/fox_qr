import 'package:fox/shared/shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppButton(
            horizontalMargin: 24,
            onClick: () async {
              final isAvailable =
                  await InternetConnectionChecker().hasConnection;
              if (isAvailable) {
                if (AppEnvironment.navigator.canPop()) {
                  AppEnvironment.navigator.pop();
                }
              }
            },
            label: 'Retry',
          )
        ],
      ),
    );
  }
}
