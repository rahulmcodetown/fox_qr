import 'package:fox/shared/shared.dart';

class DrawerItem {
  final String icon;
  final String text;
  final DrawerItemType type;

  const DrawerItem({
    required this.icon,
    required this.text,
    required this.type,
  });
}
