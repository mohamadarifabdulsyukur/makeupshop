// To parse this JSON data, do
//
//     final datamakeup = datamakeupFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Datamakeup> datamakeupFromJson(String str) => List<Datamakeup>.from(json.decode(str).map((x) => Datamakeup.fromJson(x)));

String datamakeupToJson(List<Datamakeup> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Datamakeup {
    Datamakeup({
        required this.id,
        // required this.brand,
        required this.name,
        required this.price,
        required this.priceSign,
        required this.currency,
        required this.imageLink,
        required this.productLink,
        required this.websiteLink,
        required this.description,
        required this.rating,
        required this.category,
        required this.productType,
        required this.tagList,
        required this.createdAt,
        required this.updatedAt,
        required this.productApiUrl,
        required this.apiFeaturedImage,
        required this.productColors,
    });

    final int id;
    // final Brand brand;
    final String name;
    final String price;
    final dynamic priceSign;
    final dynamic currency;
    final String imageLink;
    final String productLink;
    final String websiteLink;
    final String description;
    final double rating;
    final String category;
    final String productType;
    final List<dynamic> tagList;
    final DateTime createdAt;
    final DateTime updatedAt;
    final String productApiUrl;
    final String apiFeaturedImage;
    final List<ProductColor> productColors;

    factory Datamakeup.fromJson(Map<String, dynamic> json) => Datamakeup(
        id: json["id"],
        // brand: json["brand"],
        name: json["name"],
        price: json["price"],
        priceSign: json["price_sign"],
        currency: json["currency"],
        imageLink: json["image_link"],
        productLink: json["product_link"],
        websiteLink: json["website_link"],
        description: json["description"],
        rating: json["rating"] == null ? null : json["rating"].toDouble(),
        category: json["category"] == null ? null : json["category"],
        productType: json["product_type"],
        tagList: List<dynamic>.from(json["tag_list"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        productApiUrl: json["product_api_url"],
        apiFeaturedImage: json["api_featured_image"],
        productColors: List<ProductColor>.from(json["product_colors"].map((x) => ProductColor.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        // "brand": brandValues.reverse[brand],
        "name": name,
        "price": price,
        "price_sign": priceSign,
        "currency": currency,
        "image_link": imageLink,
        "product_link": productLink,
        "website_link": websiteLink,
        "description": description,
        "rating": rating == null ? null : rating,
        "category": category == null ? null : category,
        "product_type": productType,
        "tag_list": List<dynamic>.from(tagList.map((x) => x)),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "product_api_url": productApiUrl,
        "api_featured_image": apiFeaturedImage,
        "product_colors": List<dynamic>.from(productColors.map((x) => x.toJson())),
    };
}

// enum Brand { MAYBELLINE }

// final brandValues = EnumValues({
//     "maybelline": Brand.MAYBELLINE
// });

class ProductColor {
    ProductColor({
        required this.hexValue,
        required this.colourName,
    });

    final String hexValue;
    final String colourName;

    factory ProductColor.fromJson(Map<String, dynamic> json) => ProductColor(
        hexValue: json["hex_value"],
        colourName: json["colour_name"] == null ? null : json["colour_name"],
    );

    Map<String, dynamic> toJson() => {
        "hex_value": hexValue,
        "colour_name": colourName == null ? null : colourName,
    };
}

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }
