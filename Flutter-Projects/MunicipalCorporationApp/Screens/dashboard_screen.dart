import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Providers/data_provider.dart';
import 'auth_screen.dart';
import 'complaint_registration_screen.dart';
import 'complaint_history_screen.dart';
import 'bill_payment_screen.dart';
import 'payment_history_screen.dart';
import 'service_request_screen.dart';
// import 'notifications_screen.dart';
import 'grievance_redressal_screen.dart';
import 'local_info_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';
import 'language_selection_screen.dart';
import 'about_us_screen.dart';
import 'help_support_screen.dart';

class DashboardScreen extends StatefulWidget {
  final DataProvider dataProvider;
  DashboardScreen({super.key, required this.dataProvider});
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Get.back(),
            ),
            Text('Dashboard'),
          ],
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              widget.dataProvider.logout();
              Get.to(
                MunicpalCorporationAuthScreen(
                  dataProvider: widget.dataProvider,
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_city, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    'Municipal Corporation',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.report_problem),
              title: Text('Register Complaint'),
              onTap:
                  () => Get.to(
                    () => ComplaintRegistrationScreen(
                      dataProvider: widget.dataProvider,
                    ),
                  ),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Complaint History'),
              onTap:
                  () => Get.to(
                    () => ComplaintHistoryScreen(
                      dataProvider: widget.dataProvider,
                    ),
                  ),
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Pay Bills'),
              onTap:
                  () => Get.to(
                    () => BillPaymentScreen(dataProvider: widget.dataProvider),
                  ),
            ),
            ListTile(
              leading: Icon(Icons.receipt),
              title: Text('Payment History'),
              onTap:
                  () => Get.to(
                    () =>
                        PaymentHistoryScreen(dataProvider: widget.dataProvider),
                  ),
            ),
            ListTile(
              leading: Icon(Icons.request_page),
              title: Text('Service Requests'),
              onTap:
                  () => Get.to(
                    () =>
                        ServiceRequestScreen(dataProvider: widget.dataProvider),
                  ),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              // onTap: () => Get.to(() => NotificationsScreen()),
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Grievance Redressal'),
              onTap:
                  () => Get.to(
                    () => GrievanceRedressalScreen(
                      dataProvider: widget.dataProvider,
                    ),
                  ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Local Information'),
              onTap:
                  () => Get.to(
                    () => LocalInfoScreen(dataProvider: widget.dataProvider),
                  ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap:
                  () => Get.to(
                    () => ProfileScreen(dataProvider: widget.dataProvider),
                  ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap:
                  () => Get.to(
                    () => SettingsScreen(dataProvider: widget.dataProvider),
                  ),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language Selection'),
              onTap:
                  () => Get.to(
                    () => LanguageSelectionScreen(
                      dataProvider: widget.dataProvider,
                    ),
                  ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About Us'),
              onTap:
                  () => Get.to(
                    () => AboutUsScreen(dataProvider: widget.dataProvider),
                  ),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
              onTap:
                  () => Get.to(
                    () => HelpSupportScreen(dataProvider: widget.dataProvider),
                  ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Municipal Corporation App!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add navigation to other features
              },
              child: Text('Explore Features'),
            ),
            SizedBox(height: 60),
            ListTile(
              leading: Icon(Icons.code), // GitHub icon alternative
              title: Text('Check out GitHub Page'),
              subtitle: Text('Municipal Corporation App project'),
              trailing: IconButton(
                icon: Icon(Icons.link), // Globe/Link icon
                onPressed: () async {
                  const url =
                      'https://github.com/mohitk117/Flutter-Projects/tree/main/lib/Apps/MunicipalCorporationApp/';
                  final uri = Uri.parse(url);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
