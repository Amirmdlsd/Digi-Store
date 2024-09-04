import 'package:digi_store/pages/profile_page/widget/profile_widgets.dart';
import 'package:flutter/material.dart';

class UserManagement extends StatelessWidget {
  const UserManagement({super.key});

  static const String userManagement = "/USER_MANAGEMENT";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("مدیریت کاربر"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          ProfileButton(lable: "افزودن کاربر", onTap: () {}, icon: Icons.add),
          ProfileButton(lable: "ویرایش کاربر", onTap: () {}, icon: Icons.add),
          ProfileButton(lable: "حذف کاربر", onTap: () {}, icon: Icons.add),
        ],
      )),
    );
  }
}
