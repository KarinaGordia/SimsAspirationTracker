class Wish {
  final String imageName;
  final String name;
  bool isCompleted;

  Wish({
    required this.imageName,
    required this.name,
    this.isCompleted = false,
  });
}