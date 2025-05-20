import 'package:get/get.dart';
import 'package:room_sublease/view/comon_screen/auth_screen/signup_chooser_screen.dart';
import 'package:room_sublease/view/comon_screen/image_viewer_screen.dart';
import 'package:room_sublease/view/comon_screen/splash_screen/onboarding_screen.dart';
import 'package:room_sublease/view/comon_screen/splash_screen/splash_screen.dart';

class AppRoute {
  static const String imageViewer = "/imageViewer";
  static const String splashScreen = "/splashScreen";
  static const String onboardingScreen = "/onboardingScreen";
  static const String signupChooserScreen = "/signupChooserScreen";

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
  ];
}
