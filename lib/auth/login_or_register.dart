import 'package:flutter/material.dart';
import 'package:shopping/pages/Login_page.dart';
import 'package:shopping/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;
  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: togglePages,
      );
    } else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}
