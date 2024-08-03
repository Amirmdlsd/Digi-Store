import 'package:digi_store/pages/authentication_page/pages/register_screen.dart';
import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:digi_store/pages/authentication_page/pages/verification_code_screen.dart';
import 'package:digi_store/pages/authentication_page/widget/map.dart';
import 'package:digi_store/pages/basket_page/basket_screen.dart';
import 'package:digi_store/pages/home_page/home_screen.dart';
import 'package:digi_store/pages/intro_page/splash_screen.dart';
import 'package:digi_store/pages/main_page/main_screen.dart';
import 'package:digi_store/pages/product_list_page/product_list_screen.dart';
import 'package:digi_store/pages/profile_page/pages/edit_profile.dart';
import 'package:digi_store/pages/profile_page/pages/profile_screen.dart';
import 'package:digi_store/pages/profile_page/pages/user_account_screen.dart';
import 'package:digi_store/pages/search_page/search_screen.dart';
import 'package:digi_store/pages/single_product_page/comment_list_screen.dart';
import 'package:digi_store/pages/single_product_page/register_comment_screen.dart';
import 'package:digi_store/pages/single_product_page/single_product_screen.dart';
import 'package:digi_store/pages/sub_category_page/page/sub_category_screen.dart';
import 'package:flutter/cupertino.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.splashScreen:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => SplashScreen(),
      );
    case MainScreen.mainScreen:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => MainScreen(),
      );
    case HomeScreen.homeScreen:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
      );
    case SingleProductScreen.singleProductScreen:
      return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              SingleProductScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );

            return SlideTransition(
              position: tween.animate(curvedAnimation),
              child: child,
            );
          });
    case ProductListScreen.productListScreen:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const ProductListScreen(),
        transitionsBuilder: (context, a, secondaryAnimation, child) =>
            FadeTransition(
          opacity: a,
          child: child,
        ),
      );
    case BasketScreen.basketScreen:
      return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const BasketScreen());
    case ProfileScreen.profileScreen:
      return PageRouteBuilder(pageBuilder: (_, __, ___) => ProfileScreen());
    case RegisterScreen.registerScreen:
      return PageRouteBuilder(pageBuilder: (_, __, ___) => RegisterScreen());
    case SendCodeScreen.sendCodeScreen:
      return PageRouteBuilder(pageBuilder: (_, __, ___) => SendCodeScreen());

    case CommentListScreen.commentListScreen:
      return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const CommentListScreen());

    case RegisterCommentScreen.registerCommentScreen:
      return PageRouteBuilder(
          pageBuilder: (_, __, ___) => RegisterCommentScreen());

    case VerificationCodeScreen.verificationCodeScreen:
      return PageRouteBuilder(
          pageBuilder: (_, __, ___) =>
              VerificationCodeScreen(mobile: settings.arguments as String));

    case SearchScreen.searchScreen:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SearchScreen(),
        transitionsBuilder: (context, a, secondaryAnimation, child) =>
            FadeTransition(
          opacity: a,
          child: child,
        ),
      );

    case EditNameScreen.editNameScreen:
      return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const EditNameScreen());
    case UserAccountScreen.userAcountScreen:
      return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const UserAccountScreen());

    case MapScreen.mapScreen:
      return PageRouteBuilder(pageBuilder: (_, __, ___) => MapScreen());
    case SubCategoryScreen.subCategoryScreen:
      return PageRouteBuilder(pageBuilder: (_, __, ___) => SubCategoryScreen());
  }
  return null;
}
