class UserDataType {
  final String id;
  final String name;
  final String email;
  final String phone;

  UserDataType({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  // Factory method to create a UserDataType from JSON
  factory UserDataType.fromJson(Map<String, dynamic> json) {
    return UserDataType(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }

  // Convert UserDataType to JSON
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'email': email, 'phone': phone};
  }
}
