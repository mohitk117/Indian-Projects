class ComplaintDataType {
  final String id;
  final String description;
  final String status;
  final DateTime date;

  ComplaintDataType({
    required this.id,
    required this.description,
    required this.status,
    required this.date,
  });

  // Factory method to create a ComplaintDataType from JSON
  factory ComplaintDataType.fromJson(Map<String, dynamic> json) {
    return ComplaintDataType(
      id: json['id'],
      description: json['description'],
      status: json['status'],
      date: DateTime.parse(json['date']),
    );
  }

  // Convert ComplaintDataType to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'status': status,
      'date': date.toIso8601String(),
    };
  }
}
