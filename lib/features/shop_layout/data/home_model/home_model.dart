import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

class HomeModel {
  HomeModel({
    bool? status,
    dynamic message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  HomeModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  dynamic _message;
  Data? _data;

  bool? get status => _status;
  dynamic get message => _message;
  Data? get data => _data;
}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

class Data {
  Data({
    List<Banners>? banners,
    List<Products>? products,
    String? ad,
  }) {
    _banners = banners;
    _products = products;
    _ad = ad;
  }

  Data.fromJson(dynamic json) {
    if (json['banners'] != null) {
      _banners = [];
      json['banners'].forEach((v) {
        _banners?.add(Banners.fromJson(v));
      });
    }
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
    _ad = json['ad'];
  }
  List<Banners>? _banners;
  List<Products>? _products;
  String? _ad;

  List<Banners>? get banners => _banners;
  List<Products>? get products => _products;
  String? get ad => _ad;
}

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

class Products {
  Products({
    num? id,
    num? price,
    num? oldPrice,
    num? discount,
    String? image,
    String? name,
    String? description,
    List<String>? images,
    bool? inFavorites,
    bool? inCart,
  }) {
    _id = id;
    _price = price;
    _oldPrice = oldPrice;
    _discount = discount;
    _image = image;
    _name = name;
    _description = description;
    _images = images;
    _inFavorites = inFavorites;
    _inCart = inCart;
  }

  Products.fromJson(dynamic json) {
    _id = json['id'];
    _price = json['price'];
    _oldPrice = json['old_price'];
    _discount = json['discount'];
    _image = json['image'];
    _name = json['name'];
    _description = json['description'];
    _images = json['images'] != null ? json['images'].cast<String>() : [];
    _inFavorites = json['in_favorites'];
    _inCart = json['in_cart'];
  }
  num? _id;
  num? _price;
  num? _oldPrice;
  num? _discount;
  String? _image;
  String? _name;
  String? _description;
  List<String>? _images;
  bool? _inFavorites;
  bool? _inCart;

  num? get id => _id;
  num? get price => _price;
  num? get oldPrice => _oldPrice;
  num? get discount => _discount;
  String? get image => _image;
  String? get name => _name;
  String? get description => _description;
  List<String>? get images => _images;
  bool? get inFavorites => _inFavorites;
  bool? get inCart => _inCart;
}

Banners bannersFromJson(String str) => Banners.fromJson(json.decode(str));

class Banners {
  Banners({
    num? id,
    String? image,
    dynamic category,
    dynamic product,
  }) {
    _id = id;
    _image = image;
    _category = category;
    _product = product;
  }

  Banners.fromJson(dynamic json) {
    _id = json['id'];
    _image = json['image'];
    _category = json['category'];
    _product = json['product'];
  }
  num? _id;
  String? _image;
  dynamic _category;
  dynamic _product;

  num? get id => _id;
  String? get image => _image;
  dynamic get category => _category;
  dynamic get product => _product;
}
