class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String material;
  final String dimensions;
  final String color;
  final String condition;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.material = 'Fabric',
    this.dimensions = '84"W x 36"D x 32"H',
    this.color = 'Gray',
    this.condition = 'New',
  });
}
