class WishModel {
  final String imagePath;
  final String name;
  final String expansionPackKey;
  bool isCompleted;

  WishModel({
    required this.imagePath,
    required this.name,
    required this.expansionPackKey,
    this.isCompleted = false,
  });
}