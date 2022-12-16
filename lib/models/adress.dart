class Addres
{
  int? id;
  String? name;
  String? fullAddress;

  Addres(
      {this.id,
        this.fullAddress,
        this.name,
      });

  Addres.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullAddress = json['fullAddress'];
    name = json['name'];
  }
}