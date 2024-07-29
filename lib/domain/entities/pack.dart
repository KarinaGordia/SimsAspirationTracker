import 'package:achievements/domain/entities/wish.dart';

class Pack {
  final String name;
  final String imageName;
  //final String key;
  final List<Wish> wishes;
  bool isToggled = false;

  Pack({required this.name,
      required this.imageName,
      //required this.key,
      required this.wishes});
}
