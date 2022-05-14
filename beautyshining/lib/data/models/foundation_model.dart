import 'dart:convert';

List<FoundationModel> foundationModelFromJson(String str) => List<FoundationModel>.from(json.decode(str).map((x) => FoundationModel.fromJson(x)));

String foundationModelToJson(List<FoundationModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FoundationListModel{
  FoundationListModel({
    required this.error,
    required this.message,
    required this.count,
    required this.foundationmodels,
  });

  bool error;
  String message;
  int count;
  List<FoundationModel> foundationmodels;

  factory FoundationListModel.fromJson(Map<String, dynamic> json) => FoundationListModel(
    error: json["error"],
    message: json["message"],
    count: json["count"],
    foundationmodels: List<FoundationModel>.from(json["foundationmodels"].map((x) => FoundationModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "message": message,
    "count": count,
    "foundationmodels": List<dynamic>.from(foundationmodels.map((x) => x.toJson())),
  };
}

class FoundationModel {
    FoundationModel({
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
        required this.category,
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
    Category category;
    ProductType productType;
    List<String> tagList;
    DateTime createdAt;
    DateTime updatedAt;
    String productApiUrl;
    String apiFeaturedImage;
    List<ProductColor> productColors;

    factory FoundationModel.fromJson(Map<String, dynamic> json) => FoundationModel(
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

enum Category { LIQUID, POWDER, CONCEALER, HIGHLIGHTER, BB_CC, CONTOUR, CREAM, MINERAL }

final categoryValues = EnumValues({
    "bb_cc": Category.BB_CC,
    "concealer": Category.CONCEALER,
    "contour": Category.CONTOUR,
    "cream": Category.CREAM,
    "highlighter": Category.HIGHLIGHTER,
    "liquid": Category.LIQUID,
    "mineral": Category.MINERAL,
    "powder": Category.POWDER
});

enum Currency { CAD, USD, GBP }

final currencyValues = EnumValues({
    "CAD": Currency.CAD,
    "GBP": Currency.GBP,
    "USD": Currency.USD
});

enum PriceSign { EMPTY, PRICE_SIGN }

final priceSignValues = EnumValues({
    "\u0024": PriceSign.EMPTY,
    "£": PriceSign.PRICE_SIGN
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

enum ProductType { FOUNDATION }

final productTypeValues = EnumValues({
    "foundation": ProductType.FOUNDATION
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
