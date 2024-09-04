import 'package:digi_store/pages/intro_page/splash_screen.dart';
import 'package:digi_store/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  configLoading();
  runApp(const MyApp());

}
void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..backgroundColor = Colors.white
    ..indicatorColor = Colors.red
    ..textColor = Colors.black
    ..maskColor = Colors.transparent
    ..userInteractions = false
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        builder: EasyLoading.init(),
        onGenerateRoute: (settings) => onGenerateRoute(settings),
        debugShowCheckedModeBanner: false,
        locale: const Locale('fa'),
        title: 'Digi Store',
        theme: ThemeData(
          fontFamily: 'dana',
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
              labelMedium:
                  TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
              bodyMedium:
                  TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
              labelSmall: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                  decorationThickness: 2),
              bodyLarge: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: Colors.black,
              )),
        ),
        initialRoute: SplashScreen.splashScreen,
      ),
    );
  }
}
