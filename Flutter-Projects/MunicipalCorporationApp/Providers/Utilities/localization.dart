import 'package:get/get.dart';

class AppLocalization extends Translations {
  // Supported languages
  static const List<String> supportedLanguages = ['en'];

  // Translations
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      'welcome': 'Welcome',
      'complaints': 'Complaints',
      'bills': 'Bills',
      'settings': 'Settings',
    },
  };
}
