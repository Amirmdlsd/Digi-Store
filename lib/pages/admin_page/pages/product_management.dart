import 'package:digi_store/pages/profile_page/pages/user_account_screen.dart';
import 'package:flutter/material.dart';

import '../../profile_page/widget/profile_widgets.dart';

class ProductManagement extends StatelessWidget {
  const ProductManagement({super.key});

  static const String productMnagement = "/PRODUCT_MANAGEMENT";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("مدیریت محصولات"),),
      body: SafeArea(
          child: Column(
        children: [
          ProfileButton(lable: "افزودن محصول", onTap: () {}, icon: Icons.add),
          ProfileButton(lable: "ویرایش محصول", onTap: () {}, icon: Icons.add),
          ProfileButton(lable: "حذف محصول", onTap: () {}, icon: Icons.add),
        ],
      )),
    );
  }
}
