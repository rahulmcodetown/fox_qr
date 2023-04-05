part of 'routes.dart';

class PostRoutes {
  /// leading string for post detail routes, this needs to be used when creating
  /// new route
  static const postLeading = '/post-route';

  static const postDetail = '$postLeading/post-detail';

  static final postRoutes = <String>{
    postDetail,
  };

  static Widget getPage(String currentRoute, Object? args) {
    Widget child;
    switch (currentRoute) {
      case PostRoutes.postDetail:
        child = const SizedBox();
        break;

      default:
        child = const PageNotFound();
    }
    return child;
  }
}
