class ProductModel {
  int? id;
  String? categoryName;
  String? productPicture;
  String? name;
  String? description;
  num? price;

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['categoryName'];
    productPicture = json['productPicture'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
  }
}



// class Product {
//   int? id;
//   String? categoryName;
//   String? productName;
//   String? productPicture;
//   String? description;
//   num? price;

//   Product.fromjson(Map<String, dynamic> json) {
//     id = json['id'];
//     categoryName = json['categoryName'];
//     productPicture = json['productPicture'];
//     productName = json['name'];
//     description = json['description'];
//     price = json['price'];
//   }
// }
