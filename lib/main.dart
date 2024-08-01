import 'package:digi_store/config/supa_base.dart';
import 'package:digi_store/pages/authentication_page/pages/register_screen.dart';
import 'package:digi_store/pages/intro_page/splash_screen.dart';
import 'package:digi_store/pages/single_product_page/register_comment_screen.dart';
import 'package:digi_store/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  runApp(const MyApp());
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
