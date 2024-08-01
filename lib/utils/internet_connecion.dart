import 'dart:io';

Future<bool> checkInternetConnection() async {
  try {
    final result = await InternetAddress.lookup('https://www.google.com/');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      print('User is connected to the internet');
      return true;
    } else {
      print('No internet connection');
      return false;
    }
  } on SocketException catch (_) {
    print('No internet connection');
    return false;
  }
}
