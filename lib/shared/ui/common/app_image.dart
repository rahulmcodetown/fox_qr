import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImage extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;

  const AppImage(this.image, {this.width, this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return showImage(image, width: width, height: height);
  }

  Widget showImage(String image, {double? width, double? height}) {
    if (image.contains('http')) {
      return _showNetworkImage(
        image,
        width: width,
        height: height,
      );
    }
    return _showAssetImage(image, height: height, width: width);
  }

  Widget _showNetworkImage(String image, {double? width, double? height}) {
    if (image.contains('.svg')) {
      return SvgPicture.network(
        image,
        width: width,
        height: height,
      );
    }
    return CachedNetworkImage(
      imageUrl: image,
      width: width,
      height: height,
    );
  }

  Widget _showAssetImage(String image, {double? width, double? height}) {
    if (image.contains('.svg')) {
      return SvgPicture.asset(
        image,
        width: width,
        height: height,
      );
    }

    return Image(
      image: AssetImage(image),
      width: width,
      height: height,
    );
  }
}
