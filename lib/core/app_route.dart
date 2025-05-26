import 'package:get/get.dart';
import 'package:room_sublease/view/comon_screen/auth_screen/signin_screen.dart';
import 'package:room_sublease/view/comon_screen/auth_screen/signup_chooser_screen.dart';
import 'package:room_sublease/view/comon_screen/bottom_nav_bar_screen.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/complete_profile_screen.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/frame_cemara_screen.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/parson_type_screen.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/select_fun_screen.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/user_photo_screen.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/verify_identity.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/verify_waiting_screen.dart';
import 'package:room_sublease/view/comon_screen/complete_profile_screens/yourself_screen.dart';
import 'package:room_sublease/view/comon_screen/image_viewer_screen.dart';
import 'package:room_sublease/view/comon_screen/splash_screen/onboarding_screen.dart';
import 'package:room_sublease/view/comon_screen/splash_screen/splash_screen.dart';
import 'package:room_sublease/view/screens/add_screen/look_roommat_screen/location_screen.dart';
import 'package:room_sublease/view/screens/add_screen/look_roommat_screen/preferance_selection_screen.dart';
import 'package:room_sublease/view/screens/add_screen/look_roommat_screen/roommat_preferance_screen.dart';
import 'package:room_sublease/view/screens/add_screen/look_roommat_screen/roommat_riligious_screen.dart';
import 'package:room_sublease/view/screens/add_screen/looking_sublease/apartment_amenitise_screen.dart';
import 'package:room_sublease/view/screens/add_screen/looking_sublease/bring_faev_screen.dart';
import 'package:room_sublease/view/screens/add_screen/looking_sublease/housing_preference_screen.dart';
import 'package:room_sublease/view/screens/add_screen/looking_sublease/monthly_budget_screen.dart';
import 'package:room_sublease/view/screens/add_screen/looking_sublease/sublease_done_screen.dart';
import 'package:room_sublease/view/screens/add_screen/looking_sublease/sublease_map_screen.dart';
import 'package:room_sublease/view/screens/add_screen/make_friend_screen/address_screen.dart';
import 'package:room_sublease/view/screens/add_screen/make_friend_screen/extrovert_screen.dart';
import 'package:room_sublease/view/screens/add_screen/make_friend_screen/faev_screen.dart';
import 'package:room_sublease/view/screens/add_screen/make_friend_screen/greek_life_screen.dart';
import 'package:room_sublease/view/screens/add_screen/make_friend_screen/introvert_screen.dart';
import 'package:room_sublease/view/screens/add_screen/make_friend_screen/ofenout_screen.dart';
import 'package:room_sublease/view/screens/add_screen/make_friend_screen/political_screen.dart';
import 'package:room_sublease/view/screens/add_screen/make_friend_screen/religion_screen.dart';
import 'package:room_sublease/view/screens/add_screen/post_sublease_screen/describe_screen.dart';
import 'package:room_sublease/view/screens/add_screen/post_sublease_screen/give_details_screen.dart';
import 'package:room_sublease/view/screens/add_screen/post_sublease_screen/house_counting_screen.dart';
import 'package:room_sublease/view/screens/add_screen/post_sublease_screen/house_photo_screen.dart';
import 'package:room_sublease/view/screens/add_screen/post_sublease_screen/live_address.dart';
import 'package:room_sublease/view/screens/add_screen/post_sublease_screen/post_amenities_screen.dart';
import 'package:room_sublease/view/screens/add_screen/post_sublease_screen/property_details_screen.dart';
import 'package:room_sublease/view/screens/home_screen/roommat_details_screen.dart';
import 'package:room_sublease/view/screens/home_screen/subleas_details_screen.dart';
import 'package:room_sublease/view/screens/message_screens/messaging_screen.dart';
import 'package:room_sublease/view/screens/notification_screen/notification_screen.dart';
import 'package:room_sublease/view/screens/profile_screens/edit_profile_screen.dart';
import 'package:room_sublease/view/screens/profile_screens/privacy_policy_screen.dart';
import 'package:room_sublease/view/screens/profile_screens/profile_details_screen.dart';
import 'package:room_sublease/view/screens/profile_screens/subscription_screen.dart';
import 'package:room_sublease/view/screens/profile_screens/term_condition_screen.dart';
import 'package:room_sublease/view/screens/profile_screens/widget/fun_activity.dart';

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
  static const String verifyWaitingScreen = "/verifyWaitingScreen";
  static const String bottomNavScreen = "/bottomNavScreen";
  static const String roommatDetailsScreen = "/roommatDetailsScreen";
  static const String subleasDetailsScreen = "/subleasDetailsScreen";
  static const String messagingScreen = "/messagingScreen";
  static const String profileDetailsScreen = "/profileDetailsScreen";
  static const String editProfileScreen = "/editProfileScreen";
  static const String subscriptionScreen = "/subscriptionScreen";
  static const String termConditionScreen = "/termConditionScreen";
  static const String privacyPolicyScreen = "/privacyPolicyScreen";
  static const String funActivity = "/funActivity";
  static const String parsonTypeScreen = "/parsonTypeScreen";
  static const String frameCameraScreen = "/frameCameraScreen";
  static const String userImageScreen = "/userImageScreen";

  //============================================================================================all add screen
  //=========================================== looking for roommat all screen
  static const String locationScreen = "/locationScreen";
  static const String roomatPreferanceScreen = "/roomatPreferanceScreen";
  static const String preferanceSelectionScreen = "/preferanceSelectionScreen";
  static const String roommatriligiousScreen = "/roommatriligiousScreen";
  //=========================================== looking subleas screens
  static const String bringFaevScreen = "/bringFaevScreen";
  static const String housingPreferenceScreen = "/housingPreferenceScreen";
  static const String apartmentAmenitiesScreen = "/apartmentAmenitiesScreen";
  static const String monthlyBudgetScreen = "/monthlyBudgetScreen";
  static const String subleaseMapScreen = "/subleaseMapScreen";
  static const String subleasDoneScreen = "/subleasDoneScreen";
  //=========================================== make Friend screens
  static const String faevScreen = "/faevScreen";
  static const String addressScreen = "/addressScreen";
  static const String riligionScreen = "/riligionScreen";
  static const String introvertScreen = "/introvertScreen";
  static const String extrovertScreen = "/extrovertScreen";
  static const String greeklifeScreen = "/greeklifeScreen";
  static const String ofenoutScreen = "/ofenoutScreen";
  static const String politicalScreen = "/politicalScreen";
  //=========================================== post sublease screens
  static const String properDetailScreen = "/properDetailScreen";
  static const String liveAddress = "/liveAddress";
  static const String describeScreen = "/describeScreen";
  static const String houseCountingScreen = "/houseCountingScreen";
  static const String postPhotoScreen = "/postPhotoScreen";
  static const String postAmenitiesScreen = "/postAmenitiesScreen";
  static const String giveDetailsScreen = "/giveDetailsScreen";
  //=========================================== post sublease screens
  static const String notificationScreen = "/notificationScreen";

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
        name: parsonTypeScreen,
        page: () => ParsonTypeScreen(),
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
    GetPage(
        name: frameCameraScreen,
        page: () => FrameCemaraScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: userImageScreen,
        page: () => UserPhotoScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: verifyWaitingScreen,
        page: () => VerifyWaitingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: bottomNavScreen,
        page: () => CommonBottomNavBar(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: roommatDetailsScreen,
        page: () => RoommatDetailsScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: subleasDetailsScreen,
        page: () => SubleasDetailsScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: messagingScreen,
        page: () => MessagingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: messagingScreen,
        page: () => MessagingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: profileDetailsScreen,
        page: () => ProfileDetailsScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: editProfileScreen,
        page: () => EditProfileScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: subscriptionScreen,
        page: () => SubscriptionScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: termConditionScreen,
        page: () => TermConditionScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: privacyPolicyScreen,
        page: () => PrivacyPolicyScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: funActivity,
        page: () => FunActivity(),
        transition: Transition.rightToLeftWithFade),

    //============================================================================================all add screen
    //=========================================== looking for roommat all screen
    GetPage(
        name: locationScreen,
        page: () => LocationScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: roomatPreferanceScreen,
        page: () => RoommatPreferanceScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: preferanceSelectionScreen,
        page: () => PreferanceSelectionScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: bringFaevScreen,
        page: () => BringFaevScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: housingPreferenceScreen,
        page: () => HousingPreferenceScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: apartmentAmenitiesScreen,
        page: () => ApartmentAmenitiseScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: monthlyBudgetScreen,
        page: () => MonthlyBudgetScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: subleaseMapScreen,
        page: () => SubleaseMapScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: subleasDoneScreen,
        page: () => SubleaseDoneScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: roommatriligiousScreen,
        page: () => RoommatRiligiousScreen(),
        transition: Transition.rightToLeftWithFade),
    //================================================================
    GetPage(
        name: faevScreen,
        page: () => FaevScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: addressScreen,
        page: () => AddressScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: riligionScreen,
        page: () => ReligionScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: introvertScreen,
        page: () => IntrovertScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: extrovertScreen,
        page: () => ExtrovertScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: greeklifeScreen,
        page: () => GreekLifeScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: politicalScreen,
        page: () => PoliticalScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: ofenoutScreen,
        page: () => OfenoutScreen(),
        transition: Transition.rightToLeftWithFade),
//================================================================
    GetPage(
        name: properDetailScreen,
        page: () => PropertyDetailsScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: liveAddress,
        page: () => LiveAddress(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: describeScreen,
        page: () => DescribeScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: houseCountingScreen,
        page: () => HouseCountingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: describeScreen,
        page: () => DescribeScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: postPhotoScreen,
        page: () => HousePhotoScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: postAmenitiesScreen,
        page: () => PostAmenitiesScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: giveDetailsScreen,
        page: () => GiveDetailsScreen(),
        transition: Transition.rightToLeftWithFade),


//================================================================ notification screen
    GetPage(
        name: notificationScreen,
        page: () => NotificationScreen(),
        transition: Transition.rightToLeftWithFade),
  ];
}
