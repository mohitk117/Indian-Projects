class BillDataType {
  final String id;
  final double amount;
  final String category;
  final DateTime date;

  BillDataType({
    required this.id,
    required this.amount,
    required this.category,
    required this.date,
  });

  // Factory method to create a BillDataType from JSON
  factory BillDataType.fromJson(Map<String, dynamic> json) {
    return BillDataType(
      id: json['id'],
      amount: json['amount'],
      category: json['category'],
      date: DateTime.parse(json['date']),
    );
  }

  // Convert BillDataType to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'category': category,
      'date': date.toIso8601String(),
    };
  }
}
