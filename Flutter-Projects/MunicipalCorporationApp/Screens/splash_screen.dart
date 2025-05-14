import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';
import 'auth_screen.dart';

class MunicipalCorporationSplashScreen extends StatefulWidget {
  @override
  State<MunicipalCorporationSplashScreen> createState() =>
      _MunicipalCorporationSplashScreenState();
}

class _MunicipalCorporationSplashScreenState
    extends State<MunicipalCorporationSplashScreen> {
  final DataProvider dataProvider = Get.put(DataProvider());
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => MunicpalCorporationAuthScreen(dataProvider: dataProvider));
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_city, size: 100, color: Colors.red),
            SizedBox(height: 20),
            Text(
              'Municipal Corporation App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
