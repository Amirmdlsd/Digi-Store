
import 'package:digi_store/pages/admin_page/pages/admin_screen.dart';
import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:digi_store/pages/main_page/main_screen.dart';
import 'package:get/get.dart';
import 'package:digi_store/utils/internet_connecion.dart';

class SplashController extends GetxController {
  var loading = false.obs;

  Future<void> goToHomePage() async {
    try {
      loading.value = true;
      bool userConnectivity = await checkInternetConnection();

      if (userConnectivity) {
        print('User is connected: $userConnectivity');
        Get.off(() => MainScreen());
      } else {
        print('User is not connected: $userConnectivity');
        // Handle no internet connection state here
      }
    } catch (e) {
      print('Error checking internet connection: $e');
      // Handle error state here
    } finally {
      loading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAndToNamed(AdminScreen.adminScreen);
      },
    );
  }
}
