import 'api_service.dart';

class AuthService {
  final ApiService apiService;

  AuthService(this.apiService);

  Future<bool> login(String email, String password) async {
    final response = await apiService.post('/auth/login', {
      'email': email,
      'password': password,
    });
    return response['success'];
  }

  Future<bool> register(String name, String email, String password) async {
    final response = await apiService.post('/auth/register', {
      'name': name,
      'email': email,
      'password': password,
    });
    return response['success'];
  }
}
