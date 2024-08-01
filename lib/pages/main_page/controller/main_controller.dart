import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt index = 0.obs;

  void changeIndex(int indx) {
    index.value = indx;
  }
}
