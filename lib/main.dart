import 'package:flutter/material.dart';
import 'package:fypdelivery/routes/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'constants/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.myColors,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: MyRoutes.getSplashRoute(),
      getPages: MyRoutes.appRoutes(),
    );
  }
}
