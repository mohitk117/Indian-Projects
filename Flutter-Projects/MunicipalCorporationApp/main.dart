import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screens/splash_screen.dart';
import 'Providers/data_provider.dart';

void main() {
  // Initialize GetX dependencies
  Get.put(DataProvider());
  runApp(MunicipalCorporationApp());
}

class MunicipalCorporationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Municipal Corporation App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MunicipalCorporationSplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
