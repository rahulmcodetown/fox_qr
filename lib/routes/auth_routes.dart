part of 'routes.dart';

//auth routes
class AuthRoutes {
  /// leading string for routes in auth, this needs to be used when creating
  /// new route
  static const authLeading = '/auth-route';

  static const loginScreen = '$authLeading/login-screen';
  static const signupScreen = '$authLeading/signup-screen';
  static const forgotPasswordScreen = '$authLeading/forgot-password-screen';
  static const createNewPasswordScreen =
      '$authLeading/create-new-password-screen';

  static final authRoutes = <String>{
    loginScreen,
    signupScreen,
    forgotPasswordScreen,
    createNewPasswordScreen
  };

  static Widget getPage(String currentRoute, Object? args) {
    Widget child;
    switch (currentRoute) {
      case AuthRoutes.loginScreen:
        child = const LoginScreen();
        break;
      case AuthRoutes.signupScreen:
        child = const SignupScreen();
        break;
      case AuthRoutes.forgotPasswordScreen:
        child = const ForgotPasswordScreen();
        break;

      case AuthRoutes.createNewPasswordScreen:
        child = const CreateNewPasswordScreen();
        break;

      default:
        child = const PageNotFound();
    }
    return child;
  }
}
