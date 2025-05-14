import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dashboard_screen.dart';
import '../Providers/data_provider.dart';

class MunicpalCorporationAuthScreen extends StatefulWidget {
  final DataProvider dataProvider;

  MunicpalCorporationAuthScreen({super.key, required this.dataProvider});

  @override
  State<MunicpalCorporationAuthScreen> createState() =>
      _MunicpalCorporationAuthScreenState();
}

class _MunicpalCorporationAuthScreenState
    extends State<MunicpalCorporationAuthScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                widget.dataProvider.login(
                  emailController.text,
                  passwordController.text,
                );
                Get.to(
                  () => DashboardScreen(dataProvider: widget.dataProvider),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
