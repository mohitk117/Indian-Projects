import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';

class SettingsScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const SettingsScreen({Key? key, required this.dataProvider})
    : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Enable Notifications'),
            value: widget.dataProvider.notificationsEnabled.value,
            onChanged:
                (value) => widget.dataProvider.toggleNotifications(value),
          ),
          ListTile(
            title: Text('Language Selection'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.toNamed('/language-selection'),
          ),
          ListTile(
            title: Text('About Us'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.toNamed('/about-us'),
          ),
          ListTile(
            title: Text('Help & Support'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.toNamed('/help-support'),
          ),
        ],
      ),
    );
  }
}
