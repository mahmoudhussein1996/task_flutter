
class Offer {
  int? id;
  String? name;
  String? availabilityTime;
  double? oldPrice;
  double? newPrice;

  Offer(
      {this.id,
        this.name,
        this.availabilityTime,
        this.oldPrice,
        this.newPrice,
      });

  Offer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    availabilityTime = json['availabilityTime'];
    oldPrice = json['oldPrice'];
    newPrice = json['newPrice'];
  }

}

