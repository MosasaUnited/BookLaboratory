import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'constants.dart';
import 'feature/prsentation/views/splash_view.dart';

void main() {
  runApp(const BookLab());
}

class BookLab extends StatelessWidget {
  const BookLab({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(backgroundColor: kPrimaryColor),
      home: const SplashView(),
    );
  }
}
