import 'package:flutter/material.dart';
import 'package:shopping/auth/login_or_register.dart';
import 'package:shopping/themes/ligth_model.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginOrRegister(onTap: () {  },),
      theme: ligthMode,
    );
  }
}
