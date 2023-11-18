class FeaturedStoreModel {
  final String name; // Tên cửa hàng
  final String image; // URL hình ảnh cửa hàng
  final double rating; // Số sao đánh giá
  final double distance; // Khoảng cách đến cửa hàng (kilomet)
  final int minutesAway; // Cách xa bao nhiêu phút
  final List<ProductModel> products ;

  FeaturedStoreModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.distance,
    required this.minutesAway,
    required this.products,
  });
}

class ProductModel {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  ProductModel({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

List<FeaturedStoreModel> featuredStores = [
  FeaturedStoreModel(
      name: 'HighLand Coffee',
      image: 'assets/images/highland.jpg',
      rating: 4.5,
      distance: 2.3,
      minutesAway: 10,
      products: [
        ProductModel(
          name: "Product 1",
          description: "Description for Product 1",
          price: 10.0,
          imageUrl: "assets/images/pizza1.jpg",
        ),
        ProductModel(
          name: "Product 2",
          description: "Description for Product 2",
          price: 15.0,
          imageUrl: "assets/images/pizza2.png",
        ),
        ProductModel(
          name: "Product 1",
          description: "Description for Product 1",
          price: 10.0,
          imageUrl: "assets/images/pizza1.jpg",
        ),
        ProductModel(
          name: "Product 2",
          description: "Description for Product 2",
          price: 15.0,
          imageUrl: "assets/images/pizza2.png",
        ),
        ProductModel(
          name: "Product 1",
          description: "Description for Product 1",
          price: 10.0,
          imageUrl: "assets/images/pizza1.jpg",
        ),
        ProductModel(
          name: "Product 2",
          description: "Description for Product 2",
          price: 15.0,
          imageUrl: "assets/images/pizza2.png",
        ),
        ProductModel(
          name: "Product 1",
          description: "Description for Product 1",
          price: 10.0,
          imageUrl: "assets/images/pizza1.jpg",
        ),
        ProductModel(
          name: "Product 2",
          description: "Description for Product 2",
          price: 15.0,
          imageUrl: "assets/images/pizza2.png",
        ),
        ProductModel(
          name: "Product 1",
          description: "Description for Product 1",
          price: 10.0,
          imageUrl: "assets/images/pizza1.jpg",
        ),
        ProductModel(
          name: "Product 2",
          description: "Description for Product 2",
          price: 15.0,
          imageUrl: "assets/images/pizza2.png",
        ),
      ]),
  FeaturedStoreModel(
      name: 'Bếp Của Ngoại',
      image: 'assets/images/bepcuangoai.jpg',
      rating: 4.8,
      distance: 1.5,
      minutesAway: 8,
      products: [
        ProductModel(
          name: "Product 3",
          description: "Description for Product 2",
          price: 15.0,
          imageUrl: "assets/images/pizza3.png",
        ),
        ProductModel(
          name: "Product 4",
          description: "Description for Product 2",
          price: 15.0,
          imageUrl: "assets/images/pizza4.png",
        ),
      ]),
  FeaturedStoreModel(
    name: 'StarBuck Coffee',
    image: 'assets/images/starbucks.jpg',
    rating: 4.8,
    distance: 1.5,
    minutesAway: 8,
    products: [
        ProductModel(
          name: "Product 5",
          description: "Description for Product 2",
          price: 15.0,
          imageUrl: "assets/images/pizza3.png",
        ),
        ProductModel(
          name: "Product 6",
          description: "Description for Product 2",
          price: 15.0,
          imageUrl: "assets/images/pizza4.png",
        ),
      ]),
  FeaturedStoreModel(
    name: 'MC Donald',
    image: 'assets/images/mcdonald.png',
    rating: 4.8,
    distance: 1.5,
    minutesAway: 8,
    products: [
        ProductModel(
          name: "Product 7",
          description: "Description for Product 2",
          price: 15.0,
          imageUrl: "assets/images/pizza3.png",
        ),
        ProductModel(
          name: "Product 8",
          description: "Description for Product 2",
          price: 15.0,
          imageUrl: "assets/images/pizza4.png",
        ),
      ]),
];
