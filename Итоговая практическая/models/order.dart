class Order{
  final int id;
  final int petId;
  final int quantity;
  final String shipDate;
  final String status;
  final bool complete;
  Order({
    required this.id,
    required this.petId,
    required this.quantity,
    required this.shipDate,
    required this.status,
    required this.complete,
  });
  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'petId': petId,
      'quantity': quantity,
      'shipDate': shipDate,
      'status': status,
      'complete': complete,
    };
  }

  factory Order.fromJson(Map<String, dynamic> json){
    return Order(
      id: json['id'] as int,
      petId: json['petId'] as int,
      quantity: json['quantity'] as int,
      shipDate: json['shipDate'] as String,
      status: json['status'] as String,
      complete: json['complete'] as bool,
    );
  }
}