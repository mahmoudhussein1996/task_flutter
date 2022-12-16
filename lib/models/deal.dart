
class Deal {
  int? id;
  String? name;
  String? brief;
  String? timeOfDeliver;
  double? originPrice;
  double? sealingPrice;
  bool isFav = false;
  bool addedToCart = false;
  int quantity =0;
  Deal(
      {
        this.id,
        this.name,
        this.brief,
        this.timeOfDeliver,
        this.originPrice,
        this.sealingPrice,
        this.isFav = false,
        this.addedToCart = false,
        this.quantity = 0,
      });

  Deal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    brief = json['brief'];
    timeOfDeliver = json['timeOfDeliver'];
    originPrice = json['originPrice'];
    sealingPrice = json['sealingPrice'];
    isFav = json['fav'];
    addedToCart = json['addedToCart'];
    quantity =json['addedToCart'];
  }

}

