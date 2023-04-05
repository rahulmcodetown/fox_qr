part of 'routes.dart';

class CreatePostRoutes {
  /// leading string for create post routes, this needs to be used when creating
  /// new route
  static const createPostLeading = '/create-post-route';

  static const createPost = '$createPostLeading/createPost';

  static final createPostRoutes = <String>{
    createPost,
  };

  static Widget getPage(String currentRoute, Object? args) {
    Widget child;
    switch (currentRoute) {
      case CreatePostRoutes.createPost:
        child = const SizedBox();
        break;

      default:
        child = const PageNotFound();
    }
    return child;
  }
}
