class CategoryDetailModel {
  bool? status;
   Data? data;


  CategoryDetailModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = Data.fromJson(json['data']);
  }

}

class Data {
  // int? currentPage;
  late List<ProductData> productData;
  // String? firstPageUrl;
  // int? from;
  // int? lastPage;
  // String? lastPageUrl;
  // Null nextPageUrl;
  // String? path;
  // int? perPage;
  // Null prevPageUrl;
  // int? to;
  // int? total;


  Data.fromJson(Map<String, dynamic> json) {
    // currentPage = json['current_page'];
    productData = [];
    json['data'].forEach((element) {
      productData.add(ProductData.fromJson(element));
    });
    // firstPageUrl = json['first_page_url'];
    // from = json['from'];
    // lastPage = json['last_page'];
    // lastPageUrl = json['last_page_url'];
    // nextPageUrl = json['next_page_url'];
    // path = json['path'];
    // perPage = json['per_page'];
    // prevPageUrl = json['prev_page_url'];
    // to = json['to'];
    // total = json['total'];
  }
}

class ProductData {
  int ?id;
  dynamic price;
  dynamic oldPrice;
  dynamic discount;
  String? image;
  String ?name;
  // String ?description;
  // List<String> ?images;
  // bool? inFavorites;
  // bool ?inCart;

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    // description = json['description'];
    // images = json['images'].cast<String>();
    // inFavorites = json['in_favorites'];
    // inCart = json['in_cart'];
  }
}