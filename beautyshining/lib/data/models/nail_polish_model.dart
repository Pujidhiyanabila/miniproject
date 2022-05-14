// To parse this JSON data, do
//
//     final nailPolishModel = nailPolishModelFromJson(jsonString);

import 'dart:convert';

List<NailPolishModel> nailPolishModelFromJson(String str) => List<NailPolishModel>.from(json.decode(str).map((x) => NailPolishModel.fromJson(x)));

String nailPolishModelToJson(List<NailPolishModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NailPolishListModel{
  NailPolishListModel({
    required this.error,
    required this.message,
    required this.count,
    required this.nailpolishmodels,
  });

  bool error;
  String message;
  int count;
  List<NailPolishModel> nailpolishmodels;

  factory NailPolishListModel.fromJson(Map<String, dynamic> json) => NailPolishListModel(
    error: json["error"],
    message: json["message"],
    count: json["count"],
    nailpolishmodels: List<NailPolishModel>.from(json["nailpolishmodels"].map((x) => NailPolishModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "message": message,
    "count": count,
    "nailpolishmodels": List<dynamic>.from(nailpolishmodels.map((x) => x.toJson())),
  };
}

class NailPolishModel {
    NailPolishModel({
        required this.id,
        required this.brand,
        required this.name,
        required this.price,
        required this.priceSign,
        required this.currency,
        required this.imageLink,
        required this.productLink,
        required this.websiteLink,
        required this.description,
        required this.rating,
        this.category,
        required this.productType,
        required this.tagList,
        required this.createdAt,
        required this.updatedAt,
        required this.productApiUrl,
        required this.apiFeaturedImage,
        required this.productColors,
    });

    int id;
    String brand;
    String name;
    String price;
    PriceSign priceSign;
    Currency currency;
    String imageLink;
    String productLink;
    String websiteLink;
    String description;
    double rating;
    dynamic category;
    ProductType productType;
    List<String> tagList;
    DateTime createdAt;
    DateTime updatedAt;
    String productApiUrl;
    String apiFeaturedImage;
    List<ProductColor> productColors;

    factory NailPolishModel.fromJson(Map<String, dynamic> json) => NailPolishModel(
        id: json["id"],
        brand: json["brand"],
        name: json["name"],
        price: json["price"],
        priceSign: json["price_sign"],
        currency: json["currency"],
        imageLink: json["image_link"],
        productLink: json["product_link"],
        websiteLink: json["website_link"],
        description: json["description"],
        rating: json["rating"],
        category: json["category"],
        productType: json["product_type"],
        tagList: List<String>.from(json["tag_list"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        productApiUrl: json["product_api_url"],
        apiFeaturedImage: json["api_featured_image"],
        productColors: List<ProductColor>.from(json["product_colors"].map((x) => ProductColor.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "brand": brand,
        "name": name,
        "price": price,
        "price_sign": priceSign,
        "currency": currency,
        "image_link": imageLink,
        "product_link": productLink,
        "website_link": websiteLink,
        "description": description,
        "rating": rating,
        "category": category,
        "product_type": productTypeValues.reverse[productType],
        "tag_list": List<dynamic>.from(tagList.map((x) => x)),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "product_api_url": productApiUrl,
        "api_featured_image": apiFeaturedImage,
        "product_colors": List<dynamic>.from(productColors.map((x) => x.toJson())),
    };
}

enum Currency { GBP }

final currencyValues = EnumValues({
    "GBP": Currency.GBP
});

enum PriceSign { EMPTY }

final priceSignValues = EnumValues({
    "£": PriceSign.EMPTY
});

class ProductColor {
    ProductColor({
        required this.hexValue,
        required this.colourName,
    });

    String hexValue;
    String colourName;

    factory ProductColor.fromJson(Map<String, dynamic> json) => ProductColor(
        hexValue: json["hex_value"],
        colourName: json["colour_name"],
    );

    Map<String, dynamic> toJson() => {
        "hex_value": hexValue,
        "colour_name": colourName,
    };
}

enum ProductType { NAIL_POLISH }

final productTypeValues = EnumValues({
    "nail_polish": ProductType.NAIL_POLISH
});

class EnumValues<T> {
    late Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
