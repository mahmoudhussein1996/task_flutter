
class Product {
  int? id;
  String? name;
  String? unit;
  int? quantity;
  double? price;

  Product(
      {this.id,
        this.name,
        this.unit,
        this.quantity,
        this.price,
      });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    unit = json['unit'];
    quantity = json['quantity'];
    price = json['price'];
  }

}

