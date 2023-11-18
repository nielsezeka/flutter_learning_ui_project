import 'dart:convert';

List<ProductModels> welcomeFromJson(String str) => List<ProductModels>.from(
    json.decode(str).map((x) => ProductModels.fromJson(x)));

String welcomeToJson(List<ProductModels> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModels {
  String name;
  String detail;
  String price;
  String? hero;
  String image;
  String? info;
  String? offer;

  ProductModels({
    required this.name,
    required this.detail,
    required this.price,
    this.hero,
    required this.image,
    this.info,
    this.offer,
  });

  factory ProductModels.fromJson(Map<String, dynamic> json) => ProductModels(
        name: json["name"] ?? '',
        detail: json["detail"] ?? '',
        price: json["price"] ?? '',
        hero: json["hero"],
        image: json["image"] ?? '',
        info: json["info"],
        offer: json["offer"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "detail": detail,
        "price": price,
        "hero": hero,
        "image": image,
        "info": info,
        "offer": offer,
      };
}
