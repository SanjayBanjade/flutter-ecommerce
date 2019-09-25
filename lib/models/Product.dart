class Product {
  final int id;
  final String title;
  final String body;
  final int userId;

  Product({this.id, this.title, this.body, this.userId});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      userId: json['userId'],
    );
  }
}
