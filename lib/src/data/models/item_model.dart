class ItemModel {
  ItemModel({
    required this.itemName,
    required this.brand,
    required this.prices,
    required this.images,
    this.colors,
    required this.inStock,
    required this.description,
    this.discount,
  });

  final String itemName;
  final String brand;
  final List<double> prices;
  final List<String> images;
  final List<String>? colors;
  final List<bool> inStock;
  final String description;
  final double? discount;
  // TODO: final List<ReviewModel>
}
