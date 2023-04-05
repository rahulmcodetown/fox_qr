part of 'routes.dart';

class ProfileRoutes {
  /// leading string for routes in auth, this needs to be used when creating
  /// new route
  static const profileLeading = '/profile-route';

  static const editProfileScreen = '$profileLeading/edit-profile-screen';

  static final profileRoutes = <String>{
    editProfileScreen,
  };

  static Widget getPage(String currentRoute, Object? args) {
    Widget child;
    switch (currentRoute) {
      case ProfileRoutes.editProfileScreen:
        child = const SizedBox();
        break;
      default:
        child = const PageNotFound();
    }
    return child;
  }
}
