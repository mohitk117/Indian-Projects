import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';

class ProfileScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const ProfileScreen({Key? key, required this.dataProvider}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(
              () => TextField(
                controller: TextEditingController(
                  text: widget.dataProvider.userName.value,
                ),
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: (value) => widget.dataProvider.updateUserName(value),
              ),
            ),
            Obx(
              () => TextField(
                controller: TextEditingController(
                  text: widget.dataProvider.userEmail.value,
                ),
                decoration: InputDecoration(labelText: 'Email'),
                onChanged:
                    (value) => widget.dataProvider.updateUserEmail(value),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.snackbar('Success', 'Profile updated successfully!');
              },
              child: Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
