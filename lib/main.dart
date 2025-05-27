import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/core/dependency.dart';
import 'package:room_sublease/helper/prefs_helper.dart';
void main() {
  action();
  runApp(const MyApp());
}

//===================action method
action() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefsHelper.getAllPrefData();
  DependencyInjection di = DependencyInjection();
  di.dependencies();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFFFCF3EC),
    statusBarIconBrightness: Brightness.dark,
  ));
}

//==========================my app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:  Color(0xFFFCF3EC),
    ));
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // translations: AppTranslations(),
        locale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'UK'),
        title: 'Venue',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: Color(0xFFFCF3EC),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFE4E4E4),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
            ),
          ),
        ),
        // home: FrameWithImagePicker(),
        getPages: AppRoute.pages,
        initialRoute: AppRoute.bottomNavScreen,
      ),
    );
  }
}
