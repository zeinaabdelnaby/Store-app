class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final String category;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.category,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        category: jsonData['category'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  final double title;
  final int count;

  RatingModel({required this.title, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(title: jsonData['rate'], count: jsonData['count']);
  }
}
