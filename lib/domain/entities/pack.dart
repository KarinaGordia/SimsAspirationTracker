import 'package:achievements/domain/entities/wish.dart';

class Pack {
  final String key;
  final String name;
  final String imageName;
  final Map<String, Wish> wishes;
  bool isToggled = false;

  Pack(
      {required this.key,
      required this.name,
      required this.imageName,
      required this.wishes});
}
