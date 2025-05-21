import 'package:get/get.dart';
import 'package:room_sublease/view/comon_screen/auth_screen/signin_screen.dart';
import 'package:room_sublease/view/comon_screen/auth_screen/signup_chooser_screen.dart';
import 'package:room_sublease/view/comon_screen/auth_screen/signup_screen.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/complete_profile_screen.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/select_fun_screen.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/verify_identity.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/yourself_screen.dart';
import 'package:room_sublease/view/comon_screen/image_viewer_screen.dart';
import 'package:room_sublease/view/comon_screen/splash_screen/onboarding_screen.dart';
import 'package:room_sublease/view/comon_screen/splash_screen/splash_screen.dart';

class AppRoute {
  static const String imageViewer = "/imageViewer";
  static const String splashScreen = "/splashScreen";
  static const String onboardingScreen = "/onboardingScreen";
  static const String signupChooserScreen = "/signupChooserScreen";
  static const String signinScreen = "/signinScreen";
  static const String signupScreen = "/signupScreen";
  static const String selectFunScreen = "/selectFunScreen";
  static const String yourselfScreen = "/yourselfScreen";
  static const String completeProfileScreen = "/completeProfileScreen";
  static const String verifyItentity = "/verifyItentity";

  static List<GetPage> pages = [
    GetPage(
        name: imageViewer,
        page: () => ImageViewerScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: splashScreen,
        page: () => SplashScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: onboardingScreen,
        page: () => OnboardingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: signupChooserScreen,
        page: () => SignupChooserScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: signinScreen,
        page: () => SigninScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: selectFunScreen,
        page: () => SelectFunScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: yourselfScreen,
        page: () => YourselfScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: completeProfileScreen,
        page: () => CompleteProfileScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: verifyItentity,
        page: () => VerifyIdentity(),
        transition: Transition.rightToLeftWithFade),
  ];
}
