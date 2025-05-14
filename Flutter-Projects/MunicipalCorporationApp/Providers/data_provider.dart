import 'package:get/get.dart';
import 'DataTypes/user_datatype.dart';
import 'DataTypes/complaint_datatype.dart';
import 'DataTypes/bill_datatype.dart';
import 'Services/api_service.dart';
import 'Services/auth_service.dart';
// import '../Services/notification_service.dart';

class DataProvider extends GetxController {
  // Example variables
  var isLoggedIn = false.obs;
  // User Profile
  var userName = 'John Doe'.obs;
  var userEmail = 'johndoe@example.com'.obs;

  // Example functions
  void login(String email, String password) {
    // Simulate login logic
    userEmail.value = email;
    isLoggedIn.value = true;
    print('User logged in with email: $email');
  }

  void logout() {
    // Simulate logout logic
    userEmail.value = '';
    isLoggedIn.value = false;
    print('User logged out');
  }

  // Complaint Registration and History
  var complaintHistory = <String>[].obs; // List of complaints

  void registerComplaint(String complaint) {
    if (complaint.isNotEmpty) {
      complaintHistory.add(complaint);
      print('Complaint Registered: $complaint');
    }
  }

  // Bill Payments and Payment History
  var paymentHistory = <Map<String, dynamic>>[].obs; // List of payments

  void payBill(double amount) {
    if (amount > 0) {
      paymentHistory.add({'amount': amount, 'date': DateTime.now().toString()});
      print('Bill Paid: ₹$amount');
    }
  }

  // Service Requests
  var serviceRequests = <String>[].obs; // List of service requests

  void requestService(String serviceDetails) {
    if (serviceDetails.isNotEmpty) {
      serviceRequests.add(serviceDetails);
      print('Service Requested: $serviceDetails');
    }
  }

  // Notifications
  var notifications = <String>[].obs; // List of notifications

  void addNotification(String notification) {
    if (notification.isNotEmpty) {
      notifications.add(notification);
      print('Notification Added: $notification');
    }
  }

  // Grievance Redressal
  var grievances = <String>[].obs; // List of grievances

  void submitGrievance(String grievanceDetails) {
    if (grievanceDetails.isNotEmpty) {
      grievances.add(grievanceDetails);
      print('Grievance Submitted: $grievanceDetails');
    }
  }

  // Local Information
  var localInfo = <String>[].obs; // List of local information

  void addLocalInfo(String info) {
    if (info.isNotEmpty) {
      localInfo.add(info);
      print('Local Info Added: $info');
    }
  }

  void updateUserName(String name) {
    userName.value = name;
  }

  void updateUserEmail(String email) {
    userEmail.value = email;
  }

  // Notifications
  var notificationsEnabled = true.obs;

  void toggleNotifications(bool isEnabled) {
    notificationsEnabled.value = isEnabled;
  }

  // Language Selection
  var languages = ['English', 'Hindi'];
  var selectedLanguage = 'English'.obs;

  void updateSelectedLanguage(String language) {
    selectedLanguage.value = language;
  }

  // API Service
  final apiService = ApiService('https://api.example.com');
  late final authService = AuthService(apiService);
  // late final notificationService = NotificationService();

  // User Data
  var currentUser = UserDataType(id: '', name: '', email: '', phone: '').obs;

  // Complaints
  var complaints = <ComplaintDataType>[].obs;

  // Bills
  var bills = <BillDataType>[].obs;

  // Functions
  Future<void> fetchComplaints() async {
    final data = await apiService.get('/complaints');
    complaints.value =
        (data as List).map((json) => ComplaintDataType.fromJson(json)).toList();
  }

  Future<void> fetchBills() async {
    final data = await apiService.get('/bills');
    bills.value =
        (data as List).map((json) => BillDataType.fromJson(json)).toList();
  }
}
