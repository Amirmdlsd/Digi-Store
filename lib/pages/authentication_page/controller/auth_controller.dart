import 'package:digi_store/pages/authentication_page/pages/verification_code_screen.dart';
import 'package:digi_store/widget/custom_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  RxBool isSendingCode = false.obs;


}
