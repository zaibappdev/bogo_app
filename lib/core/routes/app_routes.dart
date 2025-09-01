import 'package:bogos_app/features/auth/otp/otp_screen.dart';
import 'package:bogos_app/features/auth/screens/auth_home/auth_home_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/interests/interest_screen.dart';
import '../../features/auth/rgister_complete/register_complete_screen.dart';
import '../../features/auth/screens/sign_in/sign_in_screen.dart';
import '../../features/auth/screens/sign_up/sign_up_screen.dart';
import '../../features/auth/terms_of_services/terms_and_condition.dart';
import '../../features/splash/splash_screen.dart';
import '../services/navigation_service.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: NavigationHelper.navigatorKey,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const SplashScreen(), state),
      ),

      GoRoute(
        path: '/authHome',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const AuthHomeScreen(), state),
      ),

      GoRoute(
        path: '/signIn',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const SignInScreen(), state),
      ),

      GoRoute(
        path: '/signUp',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const SignUpScreen(), state),
      ),

      GoRoute(
        path: '/otp',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const OtpScreen(), state),
      ),

      GoRoute(
        path: '/termsAndConditions',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const TermsAndCondition(), state),
      ),

      GoRoute(
        path: '/interestScreen',
        pageBuilder: (context, state) =>
            NavigationHelper.slideFromRight(const InterestScreen(), state),
      ),

      GoRoute(
        path: '/registerComplete',
        pageBuilder: (context, state) => NavigationHelper.slideFromRight(
          const RegisterCompleteScreen(),
          state,
        ),
      ),
    ],
  );
}
