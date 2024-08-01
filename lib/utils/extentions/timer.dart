import 'package:get/get.dart';

extension ConvertTimer on int {
  String convertTimer() {
    String result = '';

    Duration duration = Duration(seconds: this);

    int minuts = duration.inMinutes.remainder(60);
    int seconds = duration.inSeconds.remainder(60);

    result +=
        "${seconds.toString().padLeft(2, "0")} : ${minuts.toString().padLeft(2, "0")}  ";

    return result;
  }
}
